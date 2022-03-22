
# Design
# User config
set ::env(DESIGN_NAME) final_lo

# Change if needed
set ::env(VERILOG_FILES) [glob $::env(DESIGN_DIR)/src/*.v]
set ::env(BASE_SDC_FILE) [glob $::env(DESIGN_DIR)/src/*.sdc]
# Fill this
set ::env(CLOCK_PERIOD) "400.0"
set ::env(CLOCK_PORT) "clk_ext"

#ensure this for macros
set ::env(DESIGN_IS_CORE) "0"
set ::env(PL_TARGET_DENSITY) "0.6"
set ::env(FP_PDN_CORE_RING) "0"
set ::env(RT_MAX_LAYER) "met4"

#List of pins that need to be excluded from STA
#set ::env(FPIN_IN) 
#set ::env(FPIN_OUT) 

set filename $::env(DESIGN_DIR)/$::env(PDK)_$::env(STD_CELL_LIBRARY)_config.tcl
if { [file exists $filename] == 1} {
	source $filename
}


# Regression
set ::env(FP_CORE_UTIL) "40"
set ::env(PL_TARGET_DENSITY) "0.4"

# Extra
