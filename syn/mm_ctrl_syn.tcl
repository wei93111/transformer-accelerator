# Set library
set search_path       ". /home/raid7_2/course/cvsd/CBDK_IC_Contest/CIC/SynopsysDC/db $search_path ../ ./"
set target_library    "slow.db"
set link_library      "* $target_library dw_foundation.sldb"
set symbol_library    "tsmc13.sdb generic.sdb"
set synthetic_library "dw_foundation.sldb"
set default_schematic_options {-size infinite}

# Import Design
set DESIGN "mm_ctrl"
set hdlin_translate_off_skip_text "TRUE"
set edifout_netlist_only "TRUE"
set verilogout_no_tri true
set hdlin_enable_presto_for_vhdl "TRUE"
set sh_enable_line_editing true
set sh_line_editing_mode emacs
file mkdir syn/${DESIGN}
history keep 100
alias h history

# Analyze Design
analyze -format sverilog {rtl/define.v rtl/mm_ctrl.v rtl/buffer.v rtl/mac.v rtl/vec_product.v}
elaborate $DESIGN
current_design [get_designs $DESIGN]
link

# Design Constraints
source -echo -verbose syn/${DESIGN}_DC.sdc

# Compile Design
current_design [get_designs ${DESIGN}]
check_design > syn/${DESIGN}/check_design.txt
check_timing > syn/${DESIGN}/check_timing.txt
set_fix_multiple_port_nets -all -buffer_constants [get_designs *]
compile

# Report
current_design [get_designs ${DESIGN}]
report_timing -max_paths 1 > syn/${DESIGN}/${DESIGN}.timing
report_area -hierarchy > syn/${DESIGN}/${DESIGN}.area

# Output Design
current_design [get_designs ${DESIGN}]

# Cleanup
set bus_inference_style {%s[%d]}
set bus_naming_style {%s[%d]}
set hdlout_internal_busses true
change_names -hierarchy -rule verilog
define_name_rules name_rule -allowed {a-z A-Z 0-9 _} -max_length 255 -type cell
define_name_rules name_rule -allowed {a-z A-Z 0-9 _[]} -max_length 255 -type net
define_name_rules name_rule -map {{"\\*cell\\*" "cell"}}
define_name_rules name_rule -case_insensitive
change_names -hierarchy -rules name_rule
remove_unconnected_ports -blast_buses [get_cells -hierarchical *]
set verilogout_higher_designs_first true

# Write out
write -format ddc     -hierarchy -output syn/${DESIGN}/${DESIGN}_syn.ddc
write -format verilog -hierarchy -output syn/${DESIGN}/${DESIGN}_syn.v
write_sdf -version 2.1  -context verilog -load_delay cell syn/${DESIGN}/${DESIGN}_syn.sdf

# Finish
report_timing
report_area -hierarchy
check_design
exit
