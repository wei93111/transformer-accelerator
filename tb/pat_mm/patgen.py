from pathlib import Path
import os
import numpy as np


M         = 512                        # rows of A
K         = 256                        # cols of A / rows of B
N         = 512                        # cols of B
BIT_WIDTH = 8

PAT_ID  = 1
INA_DIR = Path(f"tb/pat_mm/p{PAT_ID}_ina.dat")   # A input pattern
INB_DIR = Path(f"tb/pat_mm/p{PAT_ID}_inb.dat")   # B input pattern
OUT_DIR = Path(f"tb/pat_mm/p{PAT_ID}_out.dat")   # golden output pattern


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


def compute_golden_24bit(a, b):
    """Compute C = A @ B with signed arithmetic; return int32 array.

    Note: No saturation is applied in design; results are represented in 24 bits.
    We mask to 24b when writing hex.
    """
    # Upcast to prevent overflow during matmul
    c = (a.astype(np.int32) @ b.astype(np.int32))
    return c


def write_int4_nibbles_row_major(path: Path, data_2d) -> None:
    """Write a 2D INT4 array in row-major order: one 4-bit hex nibble per line with address."""
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


def write_int8_bytes_row_major(path: Path, data_2d) -> None:
    """Write a 2D INT8 array in row-major order: one 8-bit hex byte per line with address."""
    path.parent.mkdir(parents=True, exist_ok=True)
    m, n = data_2d.shape
    with path.open("w", encoding="utf-8") as f:
        idx = 0
        flat = data_2d.reshape(m * n)
        for val in flat.tolist():
            byte = val & 0xFF
            f.write(f"{byte:02x}  // [{idx}]\n")
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

    # Generate random INT4 or INT8 inputs, depending on BIT_WIDTH
    a, b = generate_random(M, K, N, BIT_WIDTH)

    # Compute golden
    c = compute_golden_24bit(a, b)

    # Write in raster order with address comments
    if BIT_WIDTH == 4:
        write_int4_nibbles_row_major(INA_DIR, a)
        write_int4_nibbles_row_major(INB_DIR, b)
        mode_str = "INT4"
    else:
        write_int8_bytes_row_major(INA_DIR, a)
        write_int8_bytes_row_major(INB_DIR, b)
        mode_str = "INT8"

    write_24bit_words_row_major(OUT_DIR, c)

    print(f"Mode: {mode_str}, BIT_WIDTH = {BIT_WIDTH}")
    print(f"Wrote A pattern: {INA_DIR} ({M*K} entries)")
    print(f"Wrote B pattern: {INB_DIR} ({K*N} entries)")
    print(f"Wrote golden output: {OUT_DIR} ({M*N} entries)")


if __name__ == "__main__":
    main()


