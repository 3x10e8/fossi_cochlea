
# Design
# User config
set ::env(DESIGN_NAME) clk_tree

# Change if needed
set ::env(VERILOG_FILES) [glob $::env(DESIGN_DIR)/src/*.v]
#set ::env(BASE_SDC_FILE) [glob $::env(DESIGN_DIR)/src/*.sdc]
# Fill this
set ::env(CLOCK_PERIOD) "400.0"
set ::env(CLOCK_PORT) "clk_ext"

#ensure this for macros
set ::env(DESIGN_IS_CORE) "0"
set ::env(PL_TARGET_DENSITY) "0.64"
set ::env(FP_PDN_CORE_RING) "0"
set ::env(RT_MAX_LAYER) "met4"
set ::env(SYNTH_STRATEGY) "DELAY 3"
set ::env(FP_ASPECT_RATIO) "0.2"
set ::env(FP_IO_MODE) "0"
set ::env(RIGHT_MARGIN_MULT) "1"
set ::env(LEFT_MARGIN_MULT) "1"
set ::env(TOP_MARGIN_MULT) "1"
set ::env(BOTTOM_MARGIB_MULT) "1"
set ::env(FP_PIN_ORDER_CFG) "[glob $::env(DESIGN_DIR)/src/pins.config]"
set ::env(PL_OPENPHYSYN_OPTIMIZATIONS) "1"
set ::env(FP_CORE_UTIL) "50"







#List of pins that need to be excluded from STA
#set ::env(FPIN_IN) 
#set ::env(FPIN_OUT) 

set filename $::env(DESIGN_DIR)/$::env(PDK)_$::env(STD_CELL_LIBRARY)_config.tcl
if { [file exists $filename] == 1} {
	source $filename
}


# Regression
set ::env(FP_ASPECT_RATIO) "0.4"

# Extra
