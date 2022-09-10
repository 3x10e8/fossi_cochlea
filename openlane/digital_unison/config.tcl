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

set ::env(PDK) "sky130B"
set ::env(STD_CELL_LIBRARY) "sky130_fd_sc_hd"

set script_dir [file dirname [file normalize [info script]]]

set ::env(DESIGN_NAME) digital_unison

set ::env(VERILOG_FILES) "\
	$::env(CARAVEL_ROOT)/verilog/rtl/defines.v \
	$script_dir/../../../../verilog/final_verilog/final_verilog_includes.v \
	$script_dir/../../../../verilog/final_verilog/$::env(DESIGN_NAME)/$::env(DESIGN_NAME).v"

set ::env(DESIGN_IS_CORE) 0

set ::env(CLOCK_PORT) "clk_master" 
# gray_clk_in\[0\] gray_clk_in\[1\] gray_clk_in\[2\] gray_clk_in\[3\] gray_clk_in\[4\] gray_clk_in\[5\] gray_clk_in\[6\] gray_clk_in\[7\] gray_clk_in\[8\] gray_clk_in\[9\]\]"
set ::env(CLOCK_NET) "clk_master"
set ::env(CLOCK_PERIOD) "400"

set ::env(SYNTH_READ_BLACKBOX_LIB) 1
set ::env(FILL_INSERTION) 1

# for using standard cells
set ::env(SYNTH_NO_FLAT) 0
#set ::env(SYNTH_STRATEGY) "DELAY 0"
set ::env(SYNTH_STRATEGY) "AREA 1"
#set ::env(ROUTING_CORES) 8
set ::env(FP_SIZING) absolute

#set ::env(DIE_AREA) "0 0 300 250"
# pass: not anymore, mpw-7: [ERROR GRT-0118] Routing congestion too high.

#set ::env(DIE_AREA) "0 0 300 200"
# fail: congestion too high

#set ::env(DIE_AREA) "0 0 250 350"
# pass: not anymore, mpw-7: [ERROR GRT-0118] Routing congestion too high.

#set ::env(DIE_AREA) "0 0 350 350"
# fail: [ERROR GRT-0118] Routing congestion too high.

#set ::env(DIE_AREA) "0 0 1000 1000"
# 2 DRC errors: Min area of metal1 holes > 0.14um^2 (met1.7)

#set ::env(DIE_AREA) "0 0 300 300"
# 3 DRC errors: Min area of metal1 holes > 0.14um^2 (met1.7)

#set ::env(DIE_AREA) "0 0 300 250"
# 3 DRC errors: Min area of metal1 holes > 0.14um^2 (met1.7)

#set ::env(DIE_AREA) "0 0 300 200"
# 1 DRC error : Min area of metal1 holes > 0.14um^2 (met1.7)

#set ::env(DIE_AREA) "0 0 300 150"
# 5 DRC errors: Min area of metal1 holes > 0.14um^2 (met1.7)

#set ::env(DIE_AREA) "0 0 300 180"
# pass with warnings: (note: pin_config needs updating)
#[WARNING]: Current core area is too small for a power grid. The power grid will be minimized.
#[WARNING]: This PDK does not support cvc, skipping...
#[WARNING]: There are max fanout violations in the design at the typical corner. Please refer to '../local_disk/fossi_cochlea/openlane/digital_unison/runs/22_09_09_18_26/reports/signoff/30-rcx_sta.slew.rpt'.

# pass with redundant pins and updated pincfg? No commit.

#set ::env(DIE_AREA) "0 0 480 180"
# Reduced redundant pins, updated pin_cfg
# 8 DRC errors: Min area of metal1 holes > 0.14um^2 (met1.7)

#set ::env(DIE_AREA) "0 0 480 140"
# 6 DRC errors: Min area of metal1 holes > 0.14um^2 (met1.7)

#set ::env(DIE_AREA) "0 0 480 110"
# 2 DRC errors: Min area of metal1 holes > 0.14um^2 (met1.7)

#set ::env(DIE_AREA) "0 0 480 100"
# 2 DRC errors: Min area of metal1 holes > 0.14um^2 (met1.7)
# updated pin_cfg: 4 DRC errors

#set ::env(DIE_AREA) "0 0 480 80"
# [ERROR DPL-0036] Detailed placement failed.

#set ::env(DIE_AREA) "0 0 480 120"
# 3 DRC errors: Min area of metal1 holes > 0.14um^2 (met1.7)

#set ::env(DIE_AREA) "0 0 480 150"
# 2 DRC errors: Min area of metal1 holes > 0.14um^2 (met1.7)

#set ::env(DIE_AREA) "0 0 500 150"
# 6 DRC errors: Min area of metal1 holes > 0.14um^2 (met1.7)

#set ::env(DIE_AREA) "0 0 450 150"
# 3 DRC errors: Min area of metal1 holes > 0.14um^2 (met1.7)

#set ::env(DIE_AREA) "0 0 450 120"
# 5 DRC errors: Min area of metal1 holes > 0.14um^2 (met1.7)

#set ::env(DIE_AREA) "0 0 480 120"
# 3 DRC errors: Min area of metal1 holes > 0.14um^2 (met1.7)

#set ::env(DIE_AREA) "0 0 450 100"
# 8 DRC errors: Min area of metal1 holes > 0.14um^2 (met1.7)

#set ::env(DIE_AREA) "0 0 480 160"
# 6 DRC errors: Min area of metal1 holes > 0.14um^2 (met1.7)

#set ::env(DIE_AREA) "0 0 460 150"
# 6 DRC errors: Min area of metal1 holes > 0.14um^2 (met1.7)

#set ::env(DIE_AREA) "0 0 400 150"
# 3 DRC errors: Min area of metal1 holes > 0.14um^2 (met1.7)

#set ::env(DIE_AREA) "0 0 480 140"
# 4 DRC errors: Min area of metal1 holes > 0.14um^2 (met1.7)

#set ::env(DIE_AREA) "0 0 480 110"
# 6 DRC errors: Min area of metal1 holes > 0.14um^2 (met1.7)

#set ::env(DIE_AREA) "0 0 480 145"
# 7 DRC errors: Min area of metal1 holes > 0.14um^2 (met1.7)

#set ::env(DIE_AREA) "0 0 480 150"
# updated openlane image to 2022.09.07, passes except:
# [WARNING]: There are max fanout violations in the design at the typical corner.

#set ::env(DIE_AREA) "0 0 480 120"
# [WARNING]: There are max fanout violations in the design at the typical corner.

#set ::env(DIE_AREA) "0 0 960 100"
# works for 4 cores

#set ::env(DIE_AREA) "0 0 1920 100"
# fails for 8 cores: [ERROR GPL-0307] RePlAce divergence detected. Re-run with a smaller max_phi_cof value.

#set ::env(DIE_AREA) "0 0 1440 100"
# [ERROR GPL-0307] RePlAce divergence detected. Re-run with a smaller max_phi_cof value.

#set ::env(DIE_AREA) "0 0 1440 150"
# pass

set ::env(DIE_AREA) "0 0 1440 120"

#set ::env(DIE_AREA) "0 0 250 300" 
# fails AREA0/1/2: congestion too high

#set ::env(DIE_AREA) "0 0 250 250" 
# fails AREA0/1/2

#set ::env(DIE_AREA) "0 0 200 400"
# fail: groute.tcl exited

#set ::env(FP_ASPECT_RATIO) 0.5 
#[WARNING RSZ-0064] Unable to repair all hold checks within margin.
#set ::env(FP_ASPECT_RATIO) 2 
#[WARNING RSZ-0064] Unable to repair all hold checks within margin.

set ::env(FP_PIN_ORDER_CFG) $script_dir/../../pin_order.cfg

# set ::env(PL_BASIC_PLACEMENT) 1 
# resolving [ERROR GRT-0118] Routing congestion too high with PL_BASIC_PLACEMENT 0
# https://open-source-silicon.slack.com/archives/C016H8WJMBR/p1662708132196759?thread_ts=1662702840.800329&cid=C016H8WJMBR
set ::env(PL_BASIC_PLACEMENT) 0
 
set ::env(PL_TARGET_DENSITY) 0.55

# Maximum layer used for routing is metal 4.
# This is because this macro will be inserted in a top level (user_project_wrapper) 
# where the PDN is planned on metal 5. So, to avoid having shorts between routes
# in this macro and the top level metal 5 stripes, we have to restrict routes to metal4.  
set ::env(RT_MAX_LAYER) "met4"

# You can draw more power domains if you need to 
set ::env(VDD_NETS) [list {vccd1}]
set ::env(GND_NETS) [list {vssd1}]

set ::env(DIODE_INSERTION_STRATEGY) 4 
# If you're going to use multiple power domains, then disable cvc run.
set ::env(RUN_CVC) 1
