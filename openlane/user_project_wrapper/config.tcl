# SPDX-FileCopyrightText: 2020 Efabless Corporation
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# SPDX-License-Identifier: Apache-2.0

# Base Configurations. Don't Touch
# section begin

set ::env(PDK) "sky130B"
set ::env(STD_CELL_LIBRARY) "sky130_fd_sc_hd"

# YOU ARE NOT ALLOWED TO CHANGE ANY VARIABLES DEFINED IN THE FIXED WRAPPER CFGS 
source $::env(DESIGN_DIR)/fixed_dont_change/fixed_wrapper_cfgs.tcl

# YOU CAN CHANGE ANY VARIABLES DEFINED IN THE DEFAULT WRAPPER CFGS BY OVERRIDING THEM IN THIS CONFIG.TCL
source $::env(DESIGN_DIR)/fixed_dont_change/default_wrapper_cfgs.tcl

set script_dir [file dirname [file normalize [info script]]]

set ::env(DESIGN_NAME) user_project_wrapper
#section end

# User Configurations

## Source Verilog Files
set ::env(VERILOG_FILES) "\
	$::env(CARAVEL_ROOT)/verilog/rtl/defines.v \
	$script_dir/../../../../verilog/rtl/user_project_wrapper.v"

## Clock configurations
set ::env(CLOCK_PORT) "user_clock2"
set ::env(CLOCK_NET) "digital_unison_instance_0.clk_master digital_unison_instance_1.clk_master digital_unison_instance_2.clk_master digital_unison_instance_3.clk_master digital_unison_instance_4.clk_master digital_unison_instance_5.clk_master"

set ::env(CLOCK_PERIOD) "40"

## Internal Macros
### Macro PDN Connections
set ::env(FP_PDN_MACRO_HOOKS) "\
	digital_unison_instance_0 vccd1 vssd1 vccd1 vssd1, \
	digital_unison_instance_1 vccd1 vssd1 vccd1 vssd1, \
	digital_unison_instance_2 vccd1 vssd1 vccd1 vssd1, \
	digital_unison_instance_3 vccd1 vssd1 vccd1 vssd1, \
	digital_unison_instance_4 vccd1 vssd1 vccd1 vssd1, \
	digital_unison_instance_5 vccd1 vssd1 vccd1 vssd1, \
	analog_core_Q_0 vccd1 vssd1 vccd1 vssd1, \
	analog_core_Q_0 vdda1 vssa1 vdda1 vssd1, \
	analog_core_Q_1 vccd1 vssd1 vccd1 vssd1, \
	analog_core_Q_1 vdda1 vssa1 vdda1 vssd1, \
	analog_core_I_1 vccd1 vssd1 vccd1 vssd1, \
	analog_core_I_1 vdda1 vssa1 vdda1 vssd1"
# ADC example: https://open-source-silicon.slack.com/archives/C0161A4A59V/p1659367271479269?thread_ts=1659363344.518659&cid=C0161A4A59V

set COMMENTED_OUT {
	set ::env(GRT_OBS) "\
		met1 500 120 2500 320, \
		met2 500 120 2500 320, \
		met3 500 120 2500 320, \
		met4 500 120 2500 320, \
		met5 500 120 2500 320, \
		met1 500 440 2500 860, \
		met2 500 440 2500 860, \
		met3 500 440 2500 860, \
		met4 500 440 2500 860, \
		met5 500 440 2500 860, \
		met1 500 980 2500 1400, \
		met2 500 980 2500 1400, \
		met3 500 980 2500 1400, \
		met4 500 980 2500 1400, \
		met5 500 980 2500 1400, \
		met1 500 1520 2500 1940, \
		met2 500 1520 2500 1940, \
		met3 500 1520 2500 1940, \
		met4 500 1520 2500 1940, \
		met5 500 1520 2500 1940, \
		met1 500 2060 2500 2480, \
		met2 500 2060 2500 2480, \
		met3 500 2060 2500 2480, \
		met4 500 2060 2500 2480, \
		met5 500 2060 2500 2480, \
		met1 500 2600 2500 3020, \
		met2 500 2600 2500 3020, \
		met3 500 2600 2500 3020, \
		met4 500 2600 2500 3020, \
		met5 500 2600 2500 3020, \
		met1 500 3140 2500 3340, \
		met2 500 3140 2500 3340, \
		met3 500 3140 2500 3340, \
		met4 500 3140 2500 3340, \
		met5 500 3140 2500 3340"
}

### Macro Placement
set ::env(MACRO_PLACEMENT_CFG) $script_dir/../../macro.cfg

### PDN config
#set ::env(PDN_CFG) $script_dir/../../pdn_cfg.tcl
#set ::env(FP_PDN_HORIZONTAL_HALO) 420
#set ::env(FP_PDN_VERTICAL_HALO) 420

### Black-box verilog and views
set ::env(VERILOG_FILES_BLACKBOX) "\
	$::env(CARAVEL_ROOT)/verilog/rtl/defines.v \
	$script_dir/../../../../verilog/final_verilog/digital_unison/digital_unison.v \
	$script_dir/../../../../verilog/rtl/analog_core_I.v \
	$script_dir/../../../../verilog/rtl/analog_core_Q.v"

set ::env(EXTRA_LEFS) "\
	$script_dir/../../../../lef/digital_unison.lef \
	$script_dir/../../../../lef/analog_core_I.lef \
	$script_dir/../../../../lef/analog_core_Q.lef"

set ::env(EXTRA_GDS_FILES) "\
	$script_dir/../../../../gds/digital_unison.gds \
	$script_dir/../../../../gds/analog_core_I.gds \
	$script_dir/../../../../gds/analog_core_Q.gds"

# set ::env(GLB_RT_MAXLAYER) 5
#set ::env(RT_MAX_LAYER) {met4}
set ::env(RT_MAX_LAYER) {met5}

# disable pdn check nodes becuase it hangs with multiple power domains.
# any issue with pdn connections will be flagged with LVS so it is not a critical check.
set ::env(FP_PDN_CHECK_NODES) 0

# The following is because there are no std cells in the example wrapper project.
set ::env(SYNTH_TOP_LEVEL) 1
set ::env(PL_RANDOM_GLB_PLACEMENT) 1

set ::env(PL_RESIZER_DESIGN_OPTIMIZATIONS) 0
set ::env(PL_RESIZER_TIMING_OPTIMIZATIONS) 0
set ::env(PL_RESIZER_BUFFER_INPUT_PORTS) 0
set ::env(PL_RESIZER_BUFFER_OUTPUT_PORTS) 0

set ::env(FP_PDN_ENABLE_RAILS) 0

set ::env(DIODE_INSERTION_STRATEGY) 0
set ::env(FILL_INSERTION) 0
set ::env(TAP_DECAP_INSERTION) 0
# setting to 1, from https://open-source-silicon.slack.com/archives/C032Y8J3KHA/p1662949908087539
#set ::env(TAP_DECAP_INSERTION) 1

set ::env(CLOCK_TREE_SYNTH) 0


