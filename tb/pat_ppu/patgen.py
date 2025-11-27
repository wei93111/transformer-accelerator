#!/usr/bin/env python3
"""
Requantization Pattern Generator
Generates random 24-bit signed input patterns and calculates INT4 quantized outputs.
"""

import random

PAT_ID = 2
INPUT_FILE  = f"./tb/pat_ppu/p{PAT_ID}_in.dat"
OUTPUT_FILE = f"./tb/pat_ppu/p{PAT_ID}_out.dat"
NUM_ROWS = 16
NUM_COLS = 64


def int_to_signed_hex_24bit(value):
    """
    Convert a signed integer to 24-bit hex string (6 digits).
    
    Args:
        value: Signed integer
        
    Returns:
        6-character hex string
    """
    # Clamp to 24-bit signed range [-2^23, 2^23-1]
    min_val = -0x800000
    max_val = 0x7FFFFF
    value = max(min_val, min(max_val, value))
    
    # Handle negative values (two's complement)
    if value < 0:
        value = (1 << 24) + value
    
    return f"{value:06X}"


def signed_hex_24bit_to_int(hex_str):
    """
    Convert a 24-bit hex string to signed integer.
    
    Args:
        hex_str: 6-character hex string
        
    Returns:
        Signed integer
    """
    value = int(hex_str, 16)
    
    # Handle sign extension for 24-bit signed integer
    if value & 0x800000:  # Check if MSB (bit 23) is set
        value -= 0x1000000  # Convert to negative
    
    return value


def int_to_signed_hex_4bit(value):
    """
    Convert a signed integer to 4-bit hex string (1 digit).
    
    Args:
        value: Signed integer in range [-8, 7]
        
    Returns:
        1-character hex string
    """
    # Clamp to 4-bit signed range [-8, 7]
    value = max(-8, min(7, value))
    
    # Handle negative values (two's complement)
    if value < 0:
        value = (1 << 4) + value
    
    return f"{value:X}"


def generate_random_data():
    """
    Generate random 24-bit signed integer data.
    
    Returns:
        List of NUM_ROWS lists, each containing NUM_COLS integers
    """
    data = []
    for _ in range(NUM_ROWS):
        # Full signed 24-bit range: [-2^23, 2^23 - 1] → [-0x800000, 0x7FFFFF]
        row = [random.randint(-0x800000, 0x7FFFFF) for _ in range(NUM_COLS)]
        data.append(row)
    return data


def quantize_row(row_data):
    """
    Quantize a row of data to INT4 using scale factor.
    
    Args:
        row_data: List of integers
        
    Returns:
        Tuple of (quantized_row, scale_factor)
    """
    # Find absolute maximum
    abs_max = max(abs(x) for x in row_data)
    
    # Calculate scale factor (divide by 7, the max representable INT4 value)
    if abs_max == 0:
        scale_factor = 1.0  # Avoid division by zero
    else:
        scale_factor = abs_max / 7.0
    
    # Quantize each entry
    quantized = []
    for val in row_data:
        q_val = round(val / scale_factor)
        # Clamp to [-7, 7]
        q_val = max(-7, min(7, q_val))
        quantized.append(q_val)
    
    return quantized, scale_factor


def write_input_pattern(data, filename):
    """
    Write input data to pattern file.
    
    Args:
        data: List of NUM_ROWS lists, each containing NUM_COLS integers
        filename: Path to output file
    """
    with open(filename, 'w') as f:
        # Write NUM_COLS lines, each containing NUM_ROWS entries
        for col_idx in range(NUM_COLS):
            hex_entries = []
            for row_idx in range(NUM_ROWS):
                # MSB (leftmost) is Row 15, LSB (rightmost) is Row 0
                # So we need to reverse: write Row 15 first
                actual_row_idx = NUM_ROWS - 1 - row_idx
                value = data[actual_row_idx][col_idx]
                hex_str = int_to_signed_hex_24bit(value)
                hex_entries.append(hex_str)
            
            # Join with underscores
            output_line = '_'.join(hex_entries)
            f.write(output_line + '\n')


def write_output_pattern(quantized_data, filename):
    """
    Write quantized output data to pattern file.
    
    Args:
        quantized_data: List of NUM_ROWS lists, each containing NUM_COLS INT4 values
        filename: Path to output file
    """
    with open(filename, 'w') as f:
        # Write NUM_COLS lines
        # Each line contains 16 leading padding zeros, followed by NUM_ROWS INT4 entries
        # to match the format seen in tb/pat_requant/p0_out.dat (lines 1–9).
        for col_idx in range(NUM_COLS):
            hex_entries = []

            # 16 padding zeros at the front (MSB side)
            for _ in range(16):
                hex_entries.append('0')

            # Then the 16 quantized outputs (rows 15..0)
            for row_idx in range(NUM_ROWS):
                # MSB (leftmost non-padding) is Row 15, LSB (rightmost) is Row 0
                actual_row_idx = NUM_ROWS - 1 - row_idx
                value = quantized_data[actual_row_idx][col_idx]
                hex_str = int_to_signed_hex_4bit(value)
                hex_entries.append(hex_str)

            output_line = '_'.join(hex_entries)
            f.write(output_line + '\n')


def generate_patterns():
    """
    Main function to generate input and output patterns.
    """
    print(f"Generating requantization patterns...")
    print(f"NUM_ROWS = {NUM_ROWS}, NUM_COLS = {NUM_COLS}")
    print("")
    
    # Generate random input data
    input_data = generate_random_data()
    print(f"Generated random input data")
    
    # Quantize each row
    quantized_data = []
    print("\nQuantization scale factors per row:")
    for row_idx in range(NUM_ROWS):
        quantized_row, scale_factor = quantize_row(input_data[row_idx])
        quantized_data.append(quantized_row)
        print(f"  Row {row_idx:2d}: scale_factor = {scale_factor:.2f}")
    
    # Write input pattern
    print(f"\nWriting input pattern to: {INPUT_FILE}")
    write_input_pattern(input_data, INPUT_FILE)
    
    # Write output pattern
    print(f"Writing output pattern to: {OUTPUT_FILE}")
    write_output_pattern(quantized_data, OUTPUT_FILE)
    
    print("\nPattern generation complete!")


if __name__ == "__main__":
    generate_patterns()

