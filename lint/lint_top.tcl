# read files
read_file -type verilog {define.v top.v mm_ctrl.v ram.v buffer.v mac.v vec_product.v ppu.v quantize.v reciprocal.v softmax.v}
set DESIGN "top"
set_option top $DESIGN

# waive FF threshold error
set_option mthresh 10000000

# design read
current_goal Design_Read -top $DESIGN
link_design -force

# lint rtl
current_goal lint/lint_rtl -top $DESIGN
run_goal
current_goal lint/lint_rtl -top $DESIGN

# write reports
capture ./spyglass-1/$DESIGN/lint/lint_rtl/spyglass_reports/spyglass_violations.rpt {write_report spyglass_violations}
file copy -force ./spyglass-1/$DESIGN/lint/lint_rtl/spyglass_reports/spyglass_violations.rpt ../lint/lint_$DESIGN.rpt

exit -force