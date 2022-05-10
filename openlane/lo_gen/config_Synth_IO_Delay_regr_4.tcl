
# Design
# User config
set ::env(DESIGN_NAME) lo_gen

# Change if needed
set ::env(VERILOG_FILES) [glob $::env(DESIGN_DIR)/src/*.v]
set ::env(BASE_SDC_FILE) [glob $::env(DESIGN_DIR)/src/*.sdc]
# Fill this
#390.625ns for highest frequency
#97600ns for lowest frequency

set ::env(CLOCK_PERIOD) "390.625"
set ::env(CLOCK_PORT) "f_clk.0"
set ::env(CLOCK_NET) "f_clk.0 f_clk.1 f_clk.2 f_clk.4 f_clk.5 f_clk.6 f_clk.7 f_clk.8 f_clk.9"
#set ::env(CLOCK_PERIOD) "390.625 71.25 1562.5 3125 6250 12500 25000 50000 100000 200000"
#set ::env(CLOCK_PORT) "f_clk.0 f_clk.1 f_clk.2 f_clk.4 f_clk.5 f_clk.6 f_clk.7 f_clk.8 f_clk.9"
set ::env(IO_PCT) "0.1"
#set ::env(CLOCK_PORT_0) "f_clk.0"
#set ::env(CLOCK_PORT_1) "f_clk.1"
#set ::env(CLOCK_PORT_2) "f_clk.2"
#set ::env(CLOCK_PORT_3) "f_clk.3"
#set ::env(CLOCK_PORT_4) "f_clk.4"
#set ::env(CLOCK_PORT_5) "f_clk.5"
#set ::env(CLOCK_PORT_6) "f_clk.6"
#set ::env(CLOCK_PORT_7) "f_clk.7"
#set ::env(CLOCK_PORT_8) "f_clk.8"
#set ::env(CLOCK_PORT_9) "f_clk.9"

#set ::env(CLOCK_PERIOD_0) "390.625"
#set ::env(CLOCK_PERIOD_1) "781.25"
#set ::env(CLOCK_PERIOD_2) "1562.5"
#set ::env(CLOCK_PERIOD_3) "3125"
#set ::env(CLOCK_PERIOD_4) "6250"
#set ::env(CLOCK_PERIOD_5) "12500"
#set ::env(CLOCK_PERIOD_6) "25000"
#set ::env(CLOCK_PERIOD_7) "50000"
#set ::env(CLOCK_PERIOD_8) "100000"
#set ::env(CLOCK_PERIOD_9) "200000"

#ensure this for macros
set ::env(DESIGN_IS_CORE) "0"
set ::env(PL_TARGET_DENSITY) "0.61"
set ::env(FP_PDN_CORE_RING) "0"
set ::env(RT_MAX_LAYER) "met4"
set ::env(SYNTH_STRATEGY) "AREA 3"
set ::env(FP_ASPECT_RATIO) "0.5"
set ::env(FP_IO_MODE) "0"
set ::env(RIGHT_MARGIN_MULT) "3"
set ::env(LEFT_MARGIN_MULT) "3"
set ::env(TOP_MARGIN_MULT) "1"
set ::env(BOTTOM_MARGIB_MULT) "1"

#sets length of horizontal and vertical pins
set ::env(FP_IO_VLENGTH) "2"
set ::env(FP_IO_HLENGTH) "2" 

#sets the order of pin configuration in the *.config file
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
set ::env(SYNTH_STRATEGY) " AREA 1"
set ::env(IO_PCT) " 0.05"

# Extra
