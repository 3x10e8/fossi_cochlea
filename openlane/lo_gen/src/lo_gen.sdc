if {[info exists ::env(CLOCK_PORT)] && $::env(CLOCK_PORT) != ""} { 
    create_clock [get_ports $::env(CLOCK_PORT)]  -name $::env(CLOCK_PORT)  -period $::env(CLOCK_PERIOD)
} else {
    create_clock -name __VIRTUAL_CLK__ -period $::env(CLOCK_PERIOD)
    set ::env(CLOCK_PORT) __VIRTUAL_CLK__
}


##generation of multiple virtual clocks:
create_clock [get_ports $::env(CLOCK_PORT)] -period $::env(CLOCK_PERIOD) -name $::env(CLOCK_PORT)
#create_clock [get_ports $::env(CLOCK_PORT_1)] -period $::env(CLOCK_PERIOD_1) -name $::env(CLOCK_PORT_1)
#create_clock [get_ports $::env(CLOCK_PORT_2)] -period $::env(CLOCK_PERIOD_2) -name $::env(CLOCK_PORT_2)
#create_clock [get_ports $::env(CLOCK_PORT_3)] -period $::env(CLOCK_PERIOD_3) -name $::env(CLOCK_PORT_3)
#create_clock [get_ports $::env(CLOCK_PORT_4)] -period $::env(CLOCK_PERIOD_4) -name $::env(CLOCK_PORT_4)
#create_clock [get_ports $::env(CLOCK_PORT_5)] -period $::env(CLOCK_PERIOD_5) -name $::env(CLOCK_PORT_5)
#create_clock [get_ports $::env(CLOCK_PORT_6)] -period $::env(CLOCK_PERIOD_6) -name $::env(CLOCK_PORT_6)
#create_clock [get_ports $::env(CLOCK_PORT_7)] -period $::env(CLOCK_PERIOD_7) -name $::env(CLOCK_PORT_7)
#create_clock [get_ports $::env(CLOCK_PORT_8)] -period $::env(CLOCK_PERIOD_8) -name $::env(CLOCK_PORT_8)
#create_clock [get_ports $::env(CLOCK_PORT_9)] -period $::env(CLOCK_PERIOD_9) -name $::env(CLOCK_PORT_9)

##setting input delay corresponding to all these clocks
#considering only Tc-q delay in the input signal.
set input_delay_value "0.39"
#set input_delay_value [expr $::env(CLOCK_PERIOD) * $::env(IO_PCT)]
#set input_delay_value_1 [expr $::env(CLOCK_PERIOD_1) * $::env(IO_PCT)]
#set input_delay_value_2 [expr $::env(CLOCK_PERIOD_2) * $::env(IO_PCT)]
#set input_delay_value_3 [expr $::env(CLOCK_PERIOD_3) * $::env(IO_PCT)]
#set input_delay_value_4 [expr $::env(CLOCK_PERIOD_4) * $::env(IO_PCT)]
#set input_delay_value_5 [expr $::env(CLOCK_PERIOD_5) * $::env(IO_PCT)]
#set input_delay_value_6 [expr $::env(CLOCK_PERIOD_6) * $::env(IO_PCT)]
#set input_delay_value_7 [expr $::env(CLOCK_PERIOD_7) * $::env(IO_PCT)]
#set input_delay_value_8 [expr $::env(CLOCK_PERIOD_8) * $::env(IO_PCT)]
#set input_delay_value_9 [expr $::env(CLOCK_PERIOD_9) * $::env(IO_PCT)]

##setting output delays corresponding to all these clocks
set output_delay_value [expr $::env(CLOCK_PERIOD) * $::env(IO_PCT)]
#set output_delay_value_1 [expr $::env(CLOCK_PERIOD_1) * $::env(IO_PCT)]
#set output_delay_value_2 [expr $::env(CLOCK_PERIOD_2) * $::env(IO_PCT)]
#set output_delay_value_3 [expr $::env(CLOCK_PERIOD_3) * $::env(IO_PCT)]
#set output_delay_value_4 [expr $::env(CLOCK_PERIOD_4) * $::env(IO_PCT)]
#set output_delay_value_5 [expr $::env(CLOCK_PERIOD_5) * $::env(IO_PCT)]
#set output_delay_value_6 [expr $::env(CLOCK_PERIOD_6) * $::env(IO_PCT)]
#set output_delay_value_7 [expr $::env(CLOCK_PERIOD_7) * $::env(IO_PCT)]
#set output_delay_value_8 [expr $::env(CLOCK_PERIOD_8) * $::env(IO_PCT)]
#set output_delay_value_9 [expr $::env(CLOCK_PERIOD_9) * $::env(IO_PCT)]

puts "\[INFO\]: Setting output delay to: $output_delay_value"
#puts "\[INFO\]: Setting output delay_1 to: $output_delay_value_1"
#puts "\[INFO\]: Setting output delay_2 to: $output_delay_value_2"
#puts "\[INFO\]: Setting output delay_3 to: $output_delay_value_3"
#puts "\[INFO\]: Setting output delay_4 to: $output_delay_value_4"
#puts "\[INFO\]: Setting output delay_5 to: $output_delay_value_5"
#puts "\[INFO\]: Setting output delay_6 to: $output_delay_value_6"
#puts "\[INFO\]: Setting output delay_7 to: $output_delay_value_7"
#puts "\[INFO\]: Setting output delay_8 to: $output_delay_value_8"
#puts "\[INFO\]: Setting output delay_9 to: $output_delay_value_9"

puts "\[INFO\]: Setting input delay to: $input_delay_value"
#puts "\[INFO\]: Setting input delay_1 to: $input_delay_value_1"
#puts "\[INFO\]: Setting input delay_2 to: $input_delay_value_2"
#puts "\[INFO\]: Setting input delay_3 to: $input_delay_value_3"
#puts "\[INFO\]: Setting input delay_4 to: $input_delay_value_4"
#puts "\[INFO\]: Setting input delay_5 to: $input_delay_value_5"
#puts "\[INFO\]: Setting input delay_6 to: $input_delay_value_6"
#puts "\[INFO\]: Setting input delay_7 to: $input_delay_value_7"
#puts "\[INFO\]: Setting input delay_8 to: $input_delay_value_8"
#puts "\[INFO\]: Setting input delay_9 to: $input_delay_value_9"


#set input_delay_value [expr $::env(CLOCK_PERIOD) * $::env(IO_PCT)]
#set output_delay_value [expr $::env(CLOCK_PERIOD) * $::env(IO_PCT)]
#puts "\[INFO\]: Setting output delay to: $output_delay_value"
#puts "\[INFO\]: Setting input delay to: $input_delay_value"

set_max_fanout $::env(SYNTH_MAX_FANOUT) [current_design]

set clk_indx [lsearch [all_inputs] [get_port $::env(CLOCK_PORT)]]
#set clk_indx_1 [lsearch [all_inputs] [get_port $::env(CLOCK_PORT_1)]]
#set clk_indx_2 [lsearch [all_inputs] [get_port $::env(CLOCK_PORT_2)]]
#set clk_indx_3 [lsearch [all_inputs] [get_port $::env(CLOCK_PORT_3)]]
#set clk_indx_4 [lsearch [all_inputs] [get_port $::env(CLOCK_PORT_4)]]
#set clk_indx_5 [lsearch [all_inputs] [get_port $::env(CLOCK_PORT_5)]]
#set clk_indx_6 [lsearch [all_inputs] [get_port $::env(CLOCK_PORT_6)]]
#set clk_indx_7 [lsearch [all_inputs] [get_port $::env(CLOCK_PORT_7)]]
#set clk_indx_8 [lsearch [all_inputs] [get_port $::env(CLOCK_PORT_8)]]
#set clk_indx_9 [lsearch [all_inputs] [get_port $::env(CLOCK_PORT_9)]]

set all_inputs_wo_clk [lreplace [all_inputs] $clk_indx $clk_indx]
#set all_inputs_wo_clk_1 [lreplace [all_inputs] $clk_indx_1 $clk_indx_1]
#set all_inputs_wo_clk_2 [lreplace [all_inputs] $clk_indx_2 $clk_indx_2]
#set all_inputs_wo_clk_3 [lreplace [all_inputs] $clk_indx_3 $clk_indx_3]
#set all_inputs_wo_clk_4 [lreplace [all_inputs] $clk_indx_4 $clk_indx_4]
#set all_inputs_wo_clk_5 [lreplace [all_inputs] $clk_indx_5 $clk_indx_5]
#set all_inputs_wo_clk_6 [lreplace [all_inputs] $clk_indx_6 $clk_indx_6]
#set all_inputs_wo_clk_7 [lreplace [all_inputs] $clk_indx_7 $clk_indx_7]
#set all_inputs_wo_clk_8 [lreplace [all_inputs] $clk_indx_8 $clk_indx_8]
#set all_inputs_wo_clk_9 [lreplace [all_inputs] $clk_indx_9 $clk_indx_9]

set all_inputs_wo_clk_rst $all_inputs_wo_clk
#set all_inputs_wo_clk_rst_1 $all_inputs_wo_clk_1
#set all_inputs_wo_clk_rst_2 $all_inputs_wo_clk_2
#set all_inputs_wo_clk_rst_3 $all_inputs_wo_clk_3
#set all_inputs_wo_clk_rst_4 $all_inputs_wo_clk_4
#set all_inputs_wo_clk_rst_5 $all_inputs_wo_clk_5
#set all_inputs_wo_clk_rst_6 $all_inputs_wo_clk_6
#set all_inputs_wo_clk_rst_7 $all_inputs_wo_clk_7
#set all_inputs_wo_clk_rst_8 $all_inputs_wo_clk_8
#set all_inputs_wo_clk_rst_9 $all_inputs_wo_clk_9


#set clk_indx [lsearch [all_inputs] [get_port $::env(CLOCK_PORT)]]
##set rst_indx [lsearch [all_inputs] [get_port resetn]]
#set all_inputs_wo_clk [lreplace [all_inputs] $clk_indx $clk_indx]
##set all_inputs_wo_clk_rst [lreplace $all_inputs_wo_clk $rst_indx $rst_indx]
#set all_inputs_wo_clk_rst $all_inputs_wo_clk

set_input_delay $input_delay_value -clock [get_clocks $::env(CLOCK_PORT)] $all_inputs_wo_clk_rst
#set_input_delay $input_delay_value_1 -clock [get_clocks $::env(CLOCK_PORT_1)] $all_inputs_wo_clk_rst_1
#set_input_delay $input_delay_value_2 -clock [get_clocks $::env(CLOCK_PORT_2)] $all_inputs_wo_clk_rst_2
#set_input_delay $input_delay_value_3 -clock [get_clocks $::env(CLOCK_PORT_3)] $all_inputs_wo_clk_rst_3
#set_input_delay $input_delay_value_4 -clock [get_clocks $::env(CLOCK_PORT_4)] $all_inputs_wo_clk_rst_4
#set_input_delay $input_delay_value_5 -clock [get_clocks $::env(CLOCK_PORT_5)] $all_inputs_wo_clk_rst_5
#set_input_delay $input_delay_value_6 -clock [get_clocks $::env(CLOCK_PORT_6)] $all_inputs_wo_clk_rst_6
#set_input_delay $input_delay_value_7 -clock [get_clocks $::env(CLOCK_PORT_7)] $all_inputs_wo_clk_rst_7
#set_input_delay $input_delay_value_8 -clock [get_clocks $::env(CLOCK_PORT_8)] $all_inputs_wo_clk_rst_8
#set_input_delay $input_delay_value_9 -clock [get_clocks $::env(CLOCK_PORT_9)] $all_inputs_wo_clk_rst_9

set_output_delay $output_delay_value -clock [get_clocks $::env(CLOCK_PORT)] [all_outputs]
#set_output_delay $output_delay_value_1 -clock [get_clocks $::env(CLOCK_PORT_1)] [all_outputs]
#set_output_delay $output_delay_value_2 -clock [get_clocks $::env(CLOCK_PORT_2)] [all_outputs]
#set_output_delay $output_delay_value_3 -clock [get_clocks $::env(CLOCK_PORT_3)] [all_outputs]
#set_output_delay $output_delay_value_4 -clock [get_clocks $::env(CLOCK_PORT_4)] [all_outputs]
#set_output_delay $output_delay_value_5 -clock [get_clocks $::env(CLOCK_PORT_5)] [all_outputs]
#set_output_delay $output_delay_value_6 -clock [get_clocks $::env(CLOCK_PORT_6)] [all_outputs]
#set_output_delay $output_delay_value_7 -clock [get_clocks $::env(CLOCK_PORT_7)] [all_outputs]
#set_output_delay $output_delay_value_8 -clock [get_clocks $::env(CLOCK_PORT_8)] [all_outputs]
#set_output_delay $output_delay_value_9 -clock [get_clocks $::env(CLOCK_PORT_9)] [all_outputs]


##correct resetn
#set_input_delay $input_delay_value  -clock [get_clocks $::env(CLOCK_PORT)] $all_inputs_wo_clk_rst
##set_input_delay 0.0 -clock [get_clocks $::env(CLOCK_PORT)] {resetn}
#set_output_delay $output_delay_value  -clock [get_clocks $::env(CLOCK_PORT)] [all_outputs]

# TODO set this as parameter
set_driving_cell -lib_cell $::env(SYNTH_DRIVING_CELL) -pin $::env(SYNTH_DRIVING_CELL_PIN) [all_inputs]
set cap_load [expr $::env(SYNTH_CAP_LOAD) / 1000.0]
puts "\[INFO\]: Setting load to: $cap_load"
set_load  $cap_load [all_outputs]


set_clock_uncertainty $::env(SYNTH_CLOCK_UNCERTAINITY) [get_clocks $::env(CLOCK_PORT)]
#set_clock_uncertainty $::env(SYNTH_CLOCK_UNCERTAINITY) [get_clocks $::env(CLOCK_PORT_1)]
#set_clock_uncertainty $::env(SYNTH_CLOCK_UNCERTAINITY) [get_clocks $::env(CLOCK_PORT_2)]
#set_clock_uncertainty $::env(SYNTH_CLOCK_UNCERTAINITY) [get_clocks $::env(CLOCK_PORT_3)]
#set_clock_uncertainty $::env(SYNTH_CLOCK_UNCERTAINITY) [get_clocks $::env(CLOCK_PORT_4)]
#set_clock_uncertainty $::env(SYNTH_CLOCK_UNCERTAINITY) [get_clocks $::env(CLOCK_PORT_5)]
#set_clock_uncertainty $::env(SYNTH_CLOCK_UNCERTAINITY) [get_clocks $::env(CLOCK_PORT_6)]
#set_clock_uncertainty $::env(SYNTH_CLOCK_UNCERTAINITY) [get_clocks $::env(CLOCK_PORT_7)]
#set_clock_uncertainty $::env(SYNTH_CLOCK_UNCERTAINITY) [get_clocks $::env(CLOCK_PORT_8)]
#set_clock_uncertainty $::env(SYNTH_CLOCK_UNCERTAINITY) [get_clocks $::env(CLOCK_PORT_9)]

puts "\[INFO\]: Setting clock uncertainity to: $::env(SYNTH_CLOCK_UNCERTAINITY)"
#set_clock_uncertainty $::env(SYNTH_CLOCK_UNCERTAINITY) [get_clocks $::env(CLOCK_PORT)]

set_clock_transition $::env(SYNTH_CLOCK_TRANSITION) [get_clocks $::env(CLOCK_PORT)]
#set_clock_transition $::env(SYNTH_CLOCK_TRANSITION) [get_clocks $::env(CLOCK_PORT_1)]
#set_clock_transition $::env(SYNTH_CLOCK_TRANSITION) [get_clocks $::env(CLOCK_PORT_2)]
#set_clock_transition $::env(SYNTH_CLOCK_TRANSITION) [get_clocks $::env(CLOCK_PORT_3)]
#set_clock_transition $::env(SYNTH_CLOCK_TRANSITION) [get_clocks $::env(CLOCK_PORT_4)]
#set_clock_transition $::env(SYNTH_CLOCK_TRANSITION) [get_clocks $::env(CLOCK_PORT_5)]
#set_clock_transition $::env(SYNTH_CLOCK_TRANSITION) [get_clocks $::env(CLOCK_PORT_6)]
#set_clock_transition $::env(SYNTH_CLOCK_TRANSITION) [get_clocks $::env(CLOCK_PORT_7)]
#set_clock_transition $::env(SYNTH_CLOCK_TRANSITION) [get_clocks $::env(CLOCK_PORT_8)]
#set_clock_transition $::env(SYNTH_CLOCK_TRANSITION) [get_clocks $::env(CLOCK_PORT_9)]

puts "\[INFO\]: Setting clock transition to: $::env(SYNTH_CLOCK_TRANSITION)"
#set_clock_transition $::env(SYNTH_CLOCK_TRANSITION) [get_clocks $::env(CLOCK_PORT)]

puts "\[INFO\]: Setting timing derate to: [expr {$::env(SYNTH_TIMING_DERATE) * 10}] %"
set_timing_derate -early [expr {1-$::env(SYNTH_TIMING_DERATE)}]
set_timing_derate -late [expr {1+$::env(SYNTH_TIMING_DERATE)}]
