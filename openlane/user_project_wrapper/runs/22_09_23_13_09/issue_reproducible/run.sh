#!/bin/sh
dir=$(cd -P -- "$(dirname -- "$0")" && pwd -P)
cd $dir;
export CURRENT_GUIDE='./tmp/routing/14-global.guide';
export CURRENT_NETLIST='./tmp/routing/global.nl.v';
export CURRENT_ODB='./tmp/routing/14-global.odb';
export CURRENT_SDC='./tmp/11-user_project_wrapper.sdc';
export DESIGN_NAME='user_project_wrapper';
export DRT_OPT_ITERS='64';
export FP_PDN_ENABLE_GLOBAL_CONNECTIONS='1';
export FP_PDN_ENABLE_MACROS_GRID='1';
export FP_PDN_MACRO_HOOKS=' digital_unison_instance_0 vccd1 vssd1 vccd1 vssd1,  digital_unison_instance_1 vccd1 vssd1 vccd1 vssd1,  digital_unison_instance_2 vccd1 vssd1 vccd1 vssd1,  digital_unison_instance_3 vccd1 vssd1 vccd1 vssd1,  digital_unison_instance_4 vccd1 vssd1 vccd1 vssd1,  digital_unison_instance_5 vccd1 vssd1 vccd1 vssd1,  analog_core_Q_0 vccd1 vssd1 vccd1 vssd1,  analog_core_Q_0 vdda1 vssa1 vdda1 vssd1,  analog_core_Q_1 vccd1 vssd1 vccd1 vssd1,  analog_core_Q_1 vdda1 vssa1 vdda1 vssd1,  analog_core_I_1 vccd1 vssd1 vccd1 vssd1,  analog_core_I_1 vdda1 vssa1 vdda1 vssd1';
export GND_NET='vssd1';
export LIB_FASTEST='pdk/sky130B/libs.ref/sky130_fd_sc_hd/lib/sky130_fd_sc_hd__ff_n40C_1v95.lib';
export LIB_SLOWEST='pdk/sky130B/libs.ref/sky130_fd_sc_hd/lib/sky130_fd_sc_hd__ss_100C_1v60.lib';
export LIB_SYNTH_COMPLETE='pdk/sky130B/libs.ref/sky130_fd_sc_hd/lib/sky130_fd_sc_hd__tt_025C_1v80.lib';
export LIB_TYPICAL='pdk/sky130B/libs.ref/sky130_fd_sc_hd/lib/sky130_fd_sc_hd__tt_025C_1v80.lib';
export PACKAGED_SCRIPT_0='openlane/scripts/openroad/droute.tcl';
export PACKAGED_SCRIPT_1='openlane/scripts/openroad/common/io.tcl';
export PACKAGED_SCRIPT_2='./tmp/11-user_project_wrapper.sdc';
export PACKAGED_SCRIPT_3='openlane/scripts/openroad/common/set_global_connections.tcl';
export ROUTING_CORES='2';
export RT_MAX_LAYER='met5';
export RT_MIN_LAYER='met1';
export SAVE_DEF='./out.def';
export SAVE_NETLIST='./results/routing/user_project_wrapper.nl.v';
export SAVE_ODB='./out.odb';
export SAVE_POWERED_NETLIST='./results/routing/user_project_wrapper.pnl.v';
export SCRIPTS_DIR='openlane/scripts';
export STD_CELL_GROUND_PINS='VGND VNB';
export STD_CELL_POWER_PINS='VPWR VPB';
export VDD_NET='vccd1';
export _tmp_drt_file_prefix='./tmp/routing/drt';
export _tmp_drt_rpt_prefix='./reports/routing/drt';
TOOL_BIN=${TOOL_BIN:-openroad}
$TOOL_BIN -exit $PACKAGED_SCRIPT_0
