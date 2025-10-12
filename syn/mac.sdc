###################################################################

# Created by write_sdc on Sun Oct 12 19:55:14 2025

###################################################################
set sdc_version 2.1

set_units -time ns -resistance kOhm -capacitance pF -voltage V -current mA
set_operating_conditions typical -library typical
set_wire_load_mode segmented
set_wire_load_model -name ForQA -library typical
set_max_area 0
