# Transformer Accelerator

Author: Tzu-Wei, Tseng

## Project Overview

This repository contains a Verilog/SystemVerilog transformer inference accelerator for quantized matrix multiplication and post-processing. The design streams data from input pseudo-RAM banks through a 16-lane MAC datapath, accumulates matrix-multiply tiles, and sends 16-lane vectors to the PPU for scaling, bias addition, optional ReLU, truncation, softmax-related outputs, and online output quantization.

Supported data modes are `INT8` per-tensor quantization, `INT4` per-tensor quantization, and `INT4_VSQ` per-vector scaled quantization, with online quantization performed on the output data. The softmax block computes approximate base-2 numerators and denominators; final normalization is not included.

## Design Modules

- `top`: Connects the matrix multiplication engine and post-processing unit.
- `mm_ctrl`: Generates addresses, controls the 16-lane MAC array, and streams accumulated results.
- `mac`: Implements INT8, INT4, and INT4_VSQ multiply-accumulate datapaths.
- `ppu`: Applies scale, bias, optional ReLU, and wraps softmax and quantization modules.
- `quantize`: Performs per-tensor INT8/INT4 or per-vector INT4_VSQ online quantization.
- `softmax`: Base-2 integer approximate softmax unit for numerator and denominator computation.
- `reciprocal`: Computes fixed-point reciprocals for scaling and quantization.
- `buffer`: Parameterized register array storage for scale, bias, and intermediate values.
- `ram`: Pseudo-RAM used by testbenches to model input/output memories.

## Testbench Outputs

**Testbenches:**

- `tb/tb_top.sv` (full `top`):
  - Checks: Quantized outputs, scale factors, softmax numerators, and softmax denominators.
  - Expected: Compares against higher-precision Python references, fixed-point rounding and reciprocal computations result in small differences. A run passes if the maximum error is smaller than 1.0.

- `tb/tb_ppu.sv` (post-processing `ppu`):
  - Checks: Quantized outputs, scale factors, softmax numerators, and softmax denominators.
  - Expected: Compares against higher-precision Python references, fixed-point rounding and reciprocal computations result in small differences. A run passes if the maximum error is smaller than 1.0.

- `tb/tb_mm.sv` (matrix multiply `mm_ctrl`):
  - Checks: Accumulated matrix-multiplication results.
  - Expected: Compares against Python-generated integer matrix multiply goldens, and expects an exact bitwise match.

**Patterns**:

- `pat0`: INT4 per-tensor quantization mode.
- `pat1`: INT8 per-tensor quantization mode.
- `pat2`: INT4_VSQ per-vector scaled quantization mode.

## Implementation Results

- **Synthesis:** Synthesized with Synopsys Design Compiler in TSMC 130 nm. Post-synthesis 7.13 mm^2 area, 9.0 ns clock period.
- **Place-and-route:** Place-and-routed with Cadence Innovus in TSMC 130 nm. Post-route 11.88 mm^2 core area, 9.0 ns clock period.

## References

This project references the following paper for implementation:

```
B. Keller et al., "A 95.6-TOPS/W deep learning inference accelerator with per-vector scaled 4-bit quantization in 5 nm," IEEE Journal of Solid-State Circuits, vol. 58, no. 4, p. 1129-1141, 2023.
```

