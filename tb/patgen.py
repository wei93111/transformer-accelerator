from pathlib import Path
import os
import numpy as np


M       = 512                           # rows of A
K       = 256                           # cols of A / rows of B
N       = 512                           # cols of B
INA_DIR = Path("tb/pat/p2_ina.dat")     # A input pattern
INB_DIR = Path("tb/pat/p2_inb.dat")     # B input pattern
OUT_DIR = Path("tb/pat/p2_out.dat")     # golden output pattern


def generate_int4_random(m, k, n, seed=None):
    """Generate random INT4 matrices A(m,k), B(k,n) with values in [-8, 7]."""

    if seed is None:
        # Optional reproducibility via PATGEN_SEED env var
        env_seed = os.environ.get("PATGEN_SEED")
        seed = int(env_seed) if env_seed is not None else None

    if seed is not None:
        np.random.seed(seed)

    a = np.random.randint(-8, 8, size=(m, k), dtype=np.int8)
    b = np.random.randint(-8, 8, size=(k, n), dtype=np.int8)
    return a, b


def compute_golden_24bit(a, b):
    """Compute C = A @ B with INT4 signed arithmetic; return int32 array clipped to 24-bit two's complement range.

    Note: No saturation is applied in design for INT4 mode, but results are represented in 24 bits.
    We mask to 24b when writing hex.
    """
    # Upcast to prevent overflow during matmul
    c = (a.astype(np.int32) @ b.astype(np.int32))
    return c


def write_int4_nibbles_row_major(path: Path, data_2d) -> None:
    """Write a 2D INT4 array in row-major order: one hex nibble per line with address."""
    path.parent.mkdir(parents=True, exist_ok=True)
    m, n = data_2d.shape
    with path.open("w", encoding="utf-8") as f:
        idx = 0
        # Convert signed INT4 [-8,7] to 4-bit two's complement hex nibble
        flat = data_2d.reshape(m * n)
        for val in flat.tolist():
            nib = val & 0xF
            f.write(f"{nib:x}  // [{idx}]\n")
            idx += 1


def write_24bit_words_row_major(path: Path, data_2d) -> None:
    """Write a 2D int32 array as 24-bit two's complement hex words in row-major order."""
    path.parent.mkdir(parents=True, exist_ok=True)
    m, n = data_2d.shape
    with path.open("w", encoding="utf-8") as f:
        idx = 0
        flat = data_2d.reshape(m * n)
        for val in flat.tolist():
            word = val & 0xFFFFFF
            f.write(f"{word:06x}  // [{idx}]\n")
            idx += 1


def write_24bit_hex_words_with_address(output_path, number_of_entries, value):
    """Write one 24-bit hex word per line with an address comment."""
    if not (0 <= value <= 0xFFFFFF):
        raise ValueError("value must be within 0x000000..0xFFFFFF for 24-bit output")

    word_hex = f"{value:06x}"

    output_path = Path(output_path)
    output_path.parent.mkdir(parents=True, exist_ok=True)

    with output_path.open("w", encoding="utf-8") as f:
        for address in range(number_of_entries):
            f.write(f"{word_hex}  // [{address}]\n")


def main() -> None:

    # Generate random INT4 inputs
    a, b = generate_int4_random(M, K, N)

    # Compute golden
    c = compute_golden_24bit(a, b)

    # Write in raster order with address comments
    write_int4_nibbles_row_major(INA_DIR, a)
    write_int4_nibbles_row_major(INB_DIR, b)
    write_24bit_words_row_major(OUT_DIR, c)

    print(f"Wrote A pattern: {INA_DIR} ({M*K} entries)")
    print(f"Wrote B pattern: {INB_DIR} ({K*N} entries)")
    print(f"Wrote golden output: {OUT_DIR} ({M*N} entries)")


if __name__ == "__main__":
    main()


