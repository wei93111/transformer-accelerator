# set variables
set search_path {/home/raid7_2/course/cvsd/CBDK_IC_Contest/CIC/SynopsysDC/lib \
    /home/raid7_2/course/cvsd/CBDK_IC_Contest/CIC/SynopsysDC/db \
    $search_path}
set link_library "typical.db slow.db fast.db dw_foundation.sldb"
set target_library "typical.db slow.db fast.db"
set symbol_library "generic.sdb"
set synthetic_library "dw_foundation.sldb"

# read files
read_file -format verilog {../rtl/vec_product.v ../rtl/mac.v}

# create clock
create_clock -name "clk" -period 10 -waveform {"0" "5"} {"clk"}
set_dont_touch_network [find clock clk]
set_fix_hold clk

# set operating conditions
set_operating_conditions "typical" -library "typical"
set_wire_load_model -name "ForQA" -library "typical"
set_wire_load_mode "segmented"

# set constraints
set_boundary_optimization "*"
set_fix_multiple_port_nets -all -buffer_constant
set_max_area 0
set_max_fanout 8 mac
set_max_transition 1 mac

# synthesize
check_design
compile -map_effort medium

# report
report_timing -path full -delay max -max_paths 1 -nworst 1 > mac.timing
report_power > mac.power
report_area -nosplit > mac.area

# write files
write_sdc mac.sdc
write_sdf -version 2.1 mac.sdf
write -format verilog -hierarchy -output mac_syn.v

exit