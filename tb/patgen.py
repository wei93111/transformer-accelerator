#!/usr/bin/env python3

"""
Pattern generator for INT4 matrices used by the testbench.

Generates under tb/pat/:
  - p1_ina.dat : 512x256 INT4 (A), random values in [-8, 7]
  - p1_inb.dat : 256x512 INT4 (B), random values in [-8, 7]
  - p1_out.dat : 512x512 24-bit golden C = A @ B, row-major

All files are written in raster scan (row-major) order.
Each line contains a hex token and an end-of-line address comment: "// [idx]".
"""

from pathlib import Path
import os
import sys


def generate_int4_random(m, k, n, seed=None):
    """Generate random INT4 matrices A(m,k), B(k,n) with values in [-8, 7]."""
    try:
        import numpy as np  # type: ignore
    except Exception as e:
        print("Error: NumPy is required to generate large random patterns efficiently.")
        print("Please install numpy (e.g., 'pip install numpy') and re-run.")
        raise

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
    import numpy as np  # type: ignore

    # Upcast to prevent overflow during matmul
    c = (a.astype(np.int32) @ b.astype(np.int32))
    return c


def write_int4_nibbles_row_major(path: Path, data_2d) -> None:
    """Write a 2D INT4 array in row-major order: one hex nibble per line with address."""
    import numpy as np  # type: ignore

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
    import numpy as np  # type: ignore

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
    # Matrix dimensions
    m = 512  # rows of A, rows of output
    k = 256  # cols of A / rows of B
    n = 512  # cols of B, cols of output

    repo_root = Path(__file__).resolve().parents[1]
    pat_dir = repo_root / "tb" / "pat"

    a_out = pat_dir / "p1_ina.dat"
    b_out = pat_dir / "p1_inb.dat"
    c_out = pat_dir / "p1_out.dat"

    # Generate random INT4 inputs
    a, b = generate_int4_random(m, k, n)

    # Compute golden
    c = compute_golden_24bit(a, b)

    # Write in raster order with address comments
    write_int4_nibbles_row_major(a_out, a)
    write_int4_nibbles_row_major(b_out, b)
    write_24bit_words_row_major(c_out, c)

    print(f"Wrote A pattern: {a_out} ({m*k} entries)")
    print(f"Wrote B pattern: {b_out} ({k*n} entries)")
    print(f"Wrote golden output: {c_out} ({m*n} entries)")


if __name__ == "__main__":
    main()


