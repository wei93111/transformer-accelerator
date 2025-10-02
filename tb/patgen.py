#!/usr/bin/env python3

"""
Pattern generator for simple INT4 matrices used by the testbench.

This script writes two files under tb/pat/:
  - p1_ina.dat : 512x256 entries (A matrix), all set to hex '1'
  - p1_inb.dat : 256x512 entries (B matrix), all set to hex '1'

Each line contains a single hex digit followed by an end-of-line comment
with the flattened address, e.g.:
  1  // [0]
  1  // [1]

The testbench loads these via $readmemh into 4-bit wide memory arrays.
"""

from pathlib import Path
from typing import Union


def write_hex_nibbles_with_address(output_path: Union[str, Path], number_of_entries: int, hex_digit: str):
    """Write one hex nibble per line with an address comment.

    Args:
        output_path: Destination file path.
        number_of_entries: Total entries to write.
        hex_digit: Single hex character to write per entry (e.g., '1').
    """
    hex_char = hex_digit.strip().lower()
    if len(hex_char) != 1 or hex_char not in "0123456789abcdef":
        raise ValueError("hex_digit must be a single hex character 0-9 or a-f")

    output_path = Path(output_path)
    output_path.parent.mkdir(parents=True, exist_ok=True)

    with output_path.open("w", encoding="utf-8") as f:
        for address in range(number_of_entries):
            f.write(f"{hex_char}  // [{address}]\n")


def write_24bit_hex_words_with_address(output_path: Union[str, Path], number_of_entries: int, value: int):
    """Write one 24-bit hex word per line with an address comment.

    Args:
        output_path: Destination file path.
        number_of_entries: Total entries to write.
        value: Integer in range 0..0xFFFFFF to write per entry.
    """
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

    # Counts to match tb expectations
    a_entries = m * k  # 512 * 256 = 131072
    b_entries = k * n  # 256 * 512 = 131072

    repo_root = Path(__file__).resolve().parents[1]
    pat_dir = repo_root / "tb" / "pat"

    a_out = pat_dir / "p1_ina.dat"
    b_out = pat_dir / "p1_inb.dat"
    out_out = pat_dir / "p1_out.dat"

    write_hex_nibbles_with_address(a_out, a_entries, "1")
    write_hex_nibbles_with_address(b_out, b_entries, "1")
    # Golden output: 24-bit words; set every entry to decimal 256 = 0x000100
    write_24bit_hex_words_with_address(out_out, m * n, 0x000100)

    print(f"Wrote A pattern: {a_out} ({a_entries} entries)")
    print(f"Wrote B pattern: {b_out} ({b_entries} entries)")
    print(f"Wrote golden output: {out_out} ({m * n} entries, each 0x000100)")


if __name__ == "__main__":
    main()


