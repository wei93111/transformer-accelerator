# set libraries
set search_path {/home/raid7_2/course/cvsd/CBDK_IC_Contest/CIC/SynopsysDC/lib /home/raid7_2/course/cvsd/CBDK_IC_Contest/CIC/SynopsysDC/db $search_path}
set link_library "typical.db slow.db fast.db dw_foundation.sldb"
set target_library "typical.db slow.db fast.db"
set symbol_library "generic.sdb"
set synthetic_library "dw_foundation.sldb"

# read files
set DESIGN "mac"
analyze -format verilog {../rtl/mac.v ../rtl/vec_product.v ../rtl/define.v}
elaborate $DESIGN

# set operating conditions
set_operating_conditions -max_library slow -max slow -min_library fast -min fast

# set design constraints
set_boundary_optimization "*"
set_fix_multiple_port_nets -all -buffer_constant
set_max_area 0
set_max_fanout 8 $DESIGN
set_max_transition 1 $DESIGN

# synthesize
check_design
compile -map_effort high

# report
report_timing -path full -delay max -max_paths 1 -nworst 1 > $DESIGN.timing
report_power > $DESIGN.power
report_area -nosplit > $DESIGN.area

# write files
write_sdc $DESIGN.sdc
write_sdf -version 2.1 $DESIGN.sdf
write -format verilog -hierarchy -output $DESIGN_syn.v

exit