from pathlib import Path
import os
import numpy as np


def mode_to_params(mode: str):
    """Return (bit_width, VS) for given mode, mirroring RTL defines."""
    if mode == "INT4" or mode == "INT4_VSQ":
        bit_width = 4
        vs = 64   # INT4_VS
    elif mode == "INT8":
        bit_width = 8
        vs = 32   # INT8_VS
    else:
        raise ValueError("MODE must be 'INT4', 'INT8', or 'INT4_VSQ'")
    return bit_width, vs


M             = 128
K             = 128
N             = 128
MODE          = "INT4_VSQ"
BIT_WIDTH, VS = mode_to_params(MODE)
VEC_PER_ROW   = K // VS
VEC_PER_COL   = K // VS

PAT_ID        = 2
INA_DIR       = Path(f"tb/pat_mm/p{PAT_ID}_in_mtrx_a.dat")
INB_DIR       = Path(f"tb/pat_mm/p{PAT_ID}_in_mtrx_b.dat")
OUT_DIR       = Path(f"tb/pat_mm/p{PAT_ID}_out_mtrx.dat")
SFA_DIR       = Path(f"tb/pat_mm/p{PAT_ID}_in_sf_a.dat")
SFB_DIR       = Path(f"tb/pat_mm/p{PAT_ID}_in_sf_b.dat")



def generate_random(m, k, n, bit_width, seed=None):
    """
    Generate random INT4 or INT8 matrices A(m,k), B(k,n).

    INT4: values in [-8, 7]   (stored in int8, low nibble used)
    INT8: values in [-128, 127]
    """
    if seed is None:
        # Optional reproducibility via PATGEN_SEED env var
        env_seed = os.environ.get("PATGEN_SEED")
        seed = int(env_seed) if env_seed is not None else None

    if seed is not None:
        np.random.seed(seed)

    if bit_width == 4:
        low, high = -8, 8
    elif bit_width == 8:
        low, high = -128, 128
    else:
        raise ValueError("BIT_WIDTH must be 4 or 8")

    a = np.random.randint(low, high, size=(m, k), dtype=np.int8)
    b = np.random.randint(low, high, size=(k, n), dtype=np.int8)
    return a, b


def generate_scale_factors(mode: str, m: int, n: int):
    """
    Generate scale factors sfa (for A) and sfb (for B).

    Shapes:
      sfa: (M, VEC_PER_ROW)      - one sf per A K-vector
      sfb: (VEC_PER_COL, N)      - one sf per B K-vector
    """
    if mode in ("INT4", "INT8"):
        sfa = np.ones((m, VEC_PER_ROW), dtype=np.int8)
        sfb = np.ones((VEC_PER_COL, n), dtype=np.int8)
    elif mode == "INT4_VSQ":
        # Random positive 8-bit scale factors (1..127)
        sfa = np.random.randint(1, 128, size=(m, VEC_PER_ROW), dtype=np.int8)
        sfb = np.random.randint(1, 128, size=(VEC_PER_COL, n), dtype=np.int8)
    else:
        raise ValueError("MODE must be 'INT4', 'INT8', or 'INT4_VSQ'")
    return sfa, sfb


def compute_golden_24bit(a, b, sfa, sfb):
    """
    Compute golden C = A @ B with optional per-vector scale factors.

    If all scale factors are 1, this reduces to standard matmul.
    Otherwise, each K-segment (of length VS) contributes:
      dot_seg(i, j, seg) * sfa[i, seg] * sfb[seg, j]
    """
    a32 = a.astype(np.int32)
    b32 = b.astype(np.int32)
    m, k = a32.shape
    k2, n = b32.shape
    assert k == k2 == K

    # Fast path if all SFs are 1
    if np.all(sfa == 1) and np.all(sfb == 1):
        c = a32 @ b32
        return c.astype(np.int32)

    c = np.zeros((m, n), dtype=np.int64)

    for i in range(m):
        for seg in range(VEC_PER_ROW):
            k_start = seg * VS
            k_end = k_start + VS

            # segment dot products for row i over this K-chunk
            # shape: (N,)
            dot_seg = (a32[i, k_start:k_end][:, None] * b32[k_start:k_end, :]).sum(axis=0)

            scale_a = int(sfa[i, seg])
            scale_b = sfb[seg, :].astype(np.int32)   # shape (N,)

            c[i, :] += dot_seg * scale_a * scale_b

    return c.astype(np.int32)


def write_int4_nibbles_row_major(path: Path, data_2d) -> None:
    """Write a 2D INT4 array in row-major order: one 4-bit hex nibble per line (no comments)."""
    path.parent.mkdir(parents=True, exist_ok=True)
    m, n = data_2d.shape
    with path.open("w", encoding="utf-8") as f:
        # Convert signed INT4 [-8,7] to 4-bit two's complement hex nibble
        flat = data_2d.reshape(m * n)
        for val in flat.tolist():
            nib = val & 0xF
            f.write(f"{nib:x}\n")


def write_int8_bytes_row_major(path: Path, data_2d) -> None:
    """Write a 2D INT8 array in row-major order: one 8-bit hex byte per line (no comments)."""
    path.parent.mkdir(parents=True, exist_ok=True)
    m, n = data_2d.shape
    with path.open("w", encoding="utf-8") as f:
        flat = data_2d.reshape(m * n)
        for val in flat.tolist():
            byte = val & 0xFF
            f.write(f"{byte:02x}\n")


def write_24bit_words_row_major(path: Path, data_2d) -> None:
    """Write a 2D int32 array as 24-bit two's complement hex words in row-major order (no comments)."""
    path.parent.mkdir(parents=True, exist_ok=True)
    m, n = data_2d.shape
    with path.open("w", encoding="utf-8") as f:
        flat = data_2d.reshape(m * n)
        for val in flat.tolist():
            word = val & 0xFFFFFF
            f.write(f"{word:06x}\n")


def write_24bit_hex_words_with_address(output_path, number_of_entries, value):
    """Write one 24-bit hex word per line (no comments)."""
    if not (0 <= value <= 0xFFFFFF):
        raise ValueError("value must be within 0x000000..0xFFFFFF for 24-bit output")

    word_hex = f"{value:06x}"

    output_path = Path(output_path)
    output_path.parent.mkdir(parents=True, exist_ok=True)

    with output_path.open("w", encoding="utf-8") as f:
        for _ in range(number_of_entries):
            f.write(f"{word_hex}\n")


def main() -> None:

    # Generate random INT4 / INT8 inputs (depending on MODE)
    a, b = generate_random(M, K, N, BIT_WIDTH)

    # Generate scale factors
    sfa, sfb = generate_scale_factors(MODE, M, N)

    # Compute golden
    c = compute_golden_24bit(a, b, sfa, sfb)

    # Write in raster order with address comments
    if BIT_WIDTH == 4:
        write_int4_nibbles_row_major(INA_DIR, a)
        write_int4_nibbles_row_major(INB_DIR, b)
    else:
        write_int8_bytes_row_major(INA_DIR, a)
        write_int8_bytes_row_major(INB_DIR, b)

    # Write SF patterns
    # sfa: (M, VEC_PER_ROW) → row-major: row 0..M-1, seg 0..VEC_PER_ROW-1
    SFA_DIR.parent.mkdir(parents=True, exist_ok=True)
    with SFA_DIR.open("w", encoding="utf-8") as f:
        for i in range(M):
            for seg in range(VEC_PER_ROW):
                byte = int(sfa[i, seg]) & 0xFF
                f.write(f"{byte:02x}\n")

    # sfb: (VEC_PER_COL, N) → row-major: seg 0..VEC_PER_COL-1, col 0..N-1
    SFB_DIR.parent.mkdir(parents=True, exist_ok=True)
    with SFB_DIR.open("w", encoding="utf-8") as f:
        for seg in range(VEC_PER_COL):
            for j in range(N):
                byte = int(sfb[seg, j]) & 0xFF
                f.write(f"{byte:02x}\n")

    write_24bit_words_row_major(OUT_DIR, c)

    print(f"Mode: {MODE}, BIT_WIDTH = {BIT_WIDTH}, VS = {VS}")
    print(f"Wrote A pattern: {INA_DIR} ({M*K} entries)")
    print(f"Wrote B pattern: {INB_DIR} ({K*N} entries)")
    print(f"Wrote SFA pattern: {SFA_DIR} ({M*VEC_PER_ROW} entries)")
    print(f"Wrote SFB pattern: {SFB_DIR} ({VEC_PER_COL*N} entries)")
    print(f"Wrote golden output: {OUT_DIR} ({M*N} entries)")


if __name__ == "__main__":
    main()


