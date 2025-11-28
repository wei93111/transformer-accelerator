# io delay
set_input_delay   -max  1.0  [all_inputs]  
set_input_delay   -min  0.0  [all_inputs] 
set_output_delay  -max  1.0  [all_outputs]
set_output_delay  -min  0.0  [all_outputs]

# load and drive
set_load         0.01  [all_outputs]
set_drive        0.1   [all_inputs]

# operating condition
set_operating_conditions -max_library slow -max slow

# max fanout
set_max_fanout 10 [all_inputs]