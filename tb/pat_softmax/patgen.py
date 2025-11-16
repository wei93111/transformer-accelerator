#!/usr/bin/env python3
"""
Softmax Pattern Generator
Generates input and output test patterns for softmax denominator calculation.
"""

import math
import random


# ============================================================================
# Configuration Variables
# ============================================================================
INPUT_FILE = "./tb/pat_softmax/p2_in.dat"
OUTPUT_FILE = "./tb/pat_softmax/p2_out.dat"
N = 512        # Number of entries per row
NUM_ROWS = 16  # Fixed number of rows
NUM_LINES = 1  # Number of lines to generate (each line has NUM_ROWS rows)


def float_to_q30_10_signed(value):
    """
    Convert a float value to Q30.10 signed format (40 bits).
    
    Args:
        value: Float value to convert
        
    Returns:
        40-bit signed integer in Q30.10 format
    """
    # Multiply by 2^10 = 1024 to convert to Q30.10
    q30_10_value = int(value * 1024.0)
    
    # Clamp to valid 40-bit signed range [-2^39, 2^39-1]
    min_val = -0x8000000000
    max_val = 0x7FFFFFFFFF
    q30_10_value = max(min_val, min(max_val, q30_10_value))
    
    # Handle negative values (two's complement)
    if q30_10_value < 0:
        q30_10_value = (1 << 40) + q30_10_value
    
    return q30_10_value & 0xFFFFFFFFFF


def parse_q30_10_signed(hex_str):
    """
    Parse a 40-bit hex string as signed Q30.10 format and convert to float.
    
    Args:
        hex_str: String of 10 hex digits representing 40 bits
        
    Returns:
        Float value
    """
    # Convert hex string to integer
    value = int(hex_str, 16)
    
    # Handle sign extension for 40-bit signed integer
    if value & 0x8000000000:  # Check if MSB (bit 39) is set
        value -= 0x10000000000  # Convert to negative
    
    # Convert from Q30.10 to float (divide by 2^10 = 1024)
    return value / 1024.0


def convert_to_q9_7_unsigned(value):
    """
    Convert a float value to Q9.7 unsigned format (16 bits).
    
    Args:
        value: Float value to convert
        
    Returns:
        16-bit unsigned integer in Q9.7 format
    """
    # Multiply by 2^7 = 128 to convert to Q9.7
    q9_7_value = int(value * 128.0)
    
    # Clamp to valid range [0, 65535] and mask to 16 bits
    q9_7_value = max(0, min(65535, q9_7_value))
    
    return q9_7_value & 0xFFFF


def calculate_softmax_denom(row_values):
    """
    Calculate the softmax denominator for a row of values.
    
    Args:
        row_values: List of float values
        
    Returns:
        Denominator sum: Σ(2^(x_i - max))
    """
    if not row_values:
        return 0.0
    
    # Find maximum value in the row
    max_val = max(row_values)
    
    # Calculate denominator: sum of 2^(x_i - max) for all entries
    denom = sum(math.pow(2, x_i - max_val) for x_i in row_values)
    
    return denom


def generate_random_data(num_lines, min_val=-100.0, max_val=100.0):
    """
    Generate random input data.
    
    Args:
        num_lines: Number of lines to generate
        min_val: Minimum value for random floats
        max_val: Maximum value for random floats
        
    Returns:
        List of lines, each containing NUM_ROWS rows of N float values
    """
    all_data = []
    
    for _ in range(num_lines):
        rows_data = []
        for _ in range(NUM_ROWS):
            row_values = [random.uniform(min_val, max_val) for _ in range(N)]
            rows_data.append(row_values)
        all_data.append(rows_data)
    
    return all_data


def write_input_pattern(input_data, filename):
    """
    Write input data to pattern file in the required format.
    
    Args:
        input_data: List of lines, each containing NUM_ROWS rows of float values
        filename: Path to output file
    """
    with open(filename, 'w') as f:
        for line_data in input_data:
            # Write N lines, each containing 16 entries (one per row)
            # Each line represents one position in the sequence across all 16 rows
            # MSB (leftmost) is row 16, LSB (rightmost) is row 1
            
            for entry_idx in range(N):
                hex_entries = []
                for row_idx in range(NUM_ROWS):
                    # row_idx 0 is row 1, row_idx 15 is row 16
                    # But we need to write row 16 first (MSB), so reverse
                    actual_row_idx = NUM_ROWS - 1 - row_idx
                    float_val = line_data[actual_row_idx][entry_idx]
                    q30_10_val = float_to_q30_10_signed(float_val)
                    hex_str = f"{q30_10_val:010X}"
                    hex_entries.append(hex_str)
                
                # Join with underscores and write one line
                output_line = '_'.join(hex_entries)
                f.write(output_line + '\n')


def read_input_pattern(filename):
    """
    Read input pattern file and parse into rows of values.
    
    Args:
        filename: Path to input file
        
    Returns:
        List of N lines, each containing NUM_ROWS lists of float values
    """
    with open(filename, 'r') as f:
        lines = f.readlines()
    
    all_data = []
    
    for line in lines:
        line = line.strip()
        if not line:
            continue
        
        # Split by underscore to get individual entries
        entries = line.split('_')
        
        # Each line should have N * NUM_ROWS entries
        if len(entries) != N * NUM_ROWS:
            print(f"Warning: Expected {N * NUM_ROWS} entries, got {len(entries)}")
            continue
        
        # Organize into NUM_ROWS rows, each with N entries
        # MSB (leftmost) is row 16, LSB (rightmost) is row 1
        rows_data = []
        for row_idx in range(NUM_ROWS):
            row_values = []
            for entry_idx in range(N):
                # Entry at position: entry_idx * NUM_ROWS + row_idx
                # This reads column-wise: each column is one entry across all rows
                hex_val = entries[entry_idx * NUM_ROWS + row_idx]
                float_val = parse_q30_10_signed(hex_val)
                row_values.append(float_val)
            rows_data.append(row_values)
        
        all_data.append(rows_data)
    
    return all_data


def generate_output_pattern(input_data, output_filename):
    """
    Generate output pattern file from input data.
    
    Args:
        input_data: List of lines, each containing NUM_ROWS rows of values
        output_filename: Path to output file
    """
    with open(output_filename, 'w') as f:
        for line_data in input_data:
            # Calculate denominator for each row
            denoms = []
            for row_values in line_data:
                denom = calculate_softmax_denom(row_values)
                q9_7_value = convert_to_q9_7_unsigned(denom)
                denoms.append(q9_7_value)
            
            # Format output: MSB (row 16) first, LSB (row 1) last
            # denoms[0] is row 1, denoms[15] is row 16
            # So we need to reverse for output
            output_values = denoms[::-1]  # Reverse to get row 16 first
            
            # Format as 16-bit hex (4 digits) separated by underscores
            hex_values = [f"{val:04X}" for val in output_values]
            output_line = '_'.join(hex_values)
            
            f.write(output_line + '\n')


def generate_patterns():
    """
    Main function to generate input and output patterns.
    """
    print(f"Generating random input patterns...")
    print(f"N = {N}, NUM_ROWS = {NUM_ROWS}, NUM_LINES = {NUM_LINES}")
    
    # Generate random input data
    input_data = generate_random_data(NUM_LINES)
    print(f"Generated {len(input_data)} lines of random input data")
    
    # Write input pattern to file
    print(f"Writing input pattern to: {INPUT_FILE}")
    write_input_pattern(input_data, INPUT_FILE)
    
    # Generate output pattern
    print(f"Generating output pattern to: {OUTPUT_FILE}")
    generate_output_pattern(input_data, OUTPUT_FILE)
    
    print("Pattern generation complete!")


if __name__ == "__main__":
    generate_patterns()

