import os
import random
from typing import List, Tuple


IN_FILE  = "p1_in.dat"     # 1024 rows, each an unsigned INT18 in hex (no 0x)
OUT_FILE = "p1_out.dat"    # 1024 rows, each a real number reciprocal (text)
N_SAMPLES = 1024
RNG_SEED = None            # set to None for non-deterministic
INT18_MIN = 1              # avoid 0 to keep reciprocal defined
INT18_MAX = (1 << 18) - 1  # 262143


def generate_inputs(n: int, min_val: int, max_val: int, rng: random.Random) -> List[int]:
    return [rng.randint(min_val, max_val) for _ in range(n)]


def to_hex_width(value: int, width_bits: int) -> str:
    """Format value as uppercase hex with exact nibble width for given bits."""
    nibbles = (width_bits + 3) // 4
    return f"{value & ((1 << width_bits) - 1):0{nibbles}X}"


def make_golden_real(inputs: List[int]) -> List[float]:
    return [1.0 / float(v) for v in inputs]


def write_lines_hex(path: str, data: List[int], width_bits: int) -> None:
    with open(path, "w") as f:
        for v in data:
            f.write(to_hex_width(v, width_bits) + "\n")


def write_lines_float(path: str, data: List[float], precision: int = 17) -> None:
    fmt = "{:." + str(precision) + "g}\n"
    with open(path, "w") as f:
        for v in data:
            f.write(fmt.format(v))


def main() -> Tuple[str, str]:
    script_dir = os.path.dirname(os.path.abspath(__file__))
    in_path = os.path.join(script_dir, IN_FILE)
    out_path = os.path.join(script_dir, OUT_FILE)

    rng = random.Random(RNG_SEED) if RNG_SEED is not None else random.Random()

    inputs = generate_inputs(N_SAMPLES, INT18_MIN, INT18_MAX, rng)
    golden = make_golden_real(inputs)

    write_lines_hex(in_path, inputs, 18)
    write_lines_float(out_path, golden, precision=17)

    print(f"Wrote {N_SAMPLES} inputs (INT18 hex) to: {in_path}")
    print(f"Wrote {N_SAMPLES} golden (real) to: {out_path}")
    return in_path, out_path


if __name__ == "__main__":
    main()
 
