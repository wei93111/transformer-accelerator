###################################################################

# Created by write_sdc on Sun Oct 12 23:27:04 2025

###################################################################
set sdc_version 2.1

set_units -time ns -resistance kOhm -capacitance pF -voltage V -current mA
set_operating_conditions -max slow -max_library slow\
                         -min fast -min_library fast
set_wire_load_mode segmented
set_wire_load_model -name ForQA -library slow
set_max_transition 1 [current_design]
set_max_fanout 8 [current_design]
set_max_area 0
