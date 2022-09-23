set env CURRENT_GUIDE ./tmp/routing/14-global.guide
set env CURRENT_NETLIST ./tmp/routing/global.nl.v
set env CURRENT_ODB ./tmp/routing/14-global.odb
set env CURRENT_SDC ./tmp/11-user_project_wrapper.sdc
set env DESIGN_NAME user_project_wrapper
set env DRT_OPT_ITERS 64
set env FP_PDN_ENABLE_GLOBAL_CONNECTIONS 1
set env FP_PDN_ENABLE_MACROS_GRID 1
set env FP_PDN_MACRO_HOOKS  digital_unison_instance_0 vccd1 vssd1 vccd1 vssd1,  digital_unison_instance_1 vccd1 vssd1 vccd1 vssd1,  digital_unison_instance_2 vccd1 vssd1 vccd1 vssd1,  digital_unison_instance_3 vccd1 vssd1 vccd1 vssd1,  digital_unison_instance_4 vccd1 vssd1 vccd1 vssd1,  digital_unison_instance_5 vccd1 vssd1 vccd1 vssd1,  analog_core_Q_0 vccd1 vssd1 vccd1 vssd1,  analog_core_Q_0 vdda1 vssa1 vdda1 vssd1,  analog_core_Q_1 vccd1 vssd1 vccd1 vssd1,  analog_core_Q_1 vdda1 vssa1 vdda1 vssd1,  analog_core_I_1 vccd1 vssd1 vccd1 vssd1,  analog_core_I_1 vdda1 vssa1 vdda1 vssd1
set env GND_NET vssd1
set env LIB_FASTEST pdk/sky130B/libs.ref/sky130_fd_sc_hd/lib/sky130_fd_sc_hd__ff_n40C_1v95.lib
set env LIB_SLOWEST pdk/sky130B/libs.ref/sky130_fd_sc_hd/lib/sky130_fd_sc_hd__ss_100C_1v60.lib
set env LIB_SYNTH_COMPLETE pdk/sky130B/libs.ref/sky130_fd_sc_hd/lib/sky130_fd_sc_hd__tt_025C_1v80.lib
set env LIB_TYPICAL pdk/sky130B/libs.ref/sky130_fd_sc_hd/lib/sky130_fd_sc_hd__tt_025C_1v80.lib
set env PACKAGED_SCRIPT_0 openlane/scripts/openroad/droute.tcl
set env PACKAGED_SCRIPT_1 openlane/scripts/openroad/common/io.tcl
set env PACKAGED_SCRIPT_2 ./tmp/11-user_project_wrapper.sdc
set env PACKAGED_SCRIPT_3 openlane/scripts/openroad/common/set_global_connections.tcl
set env ROUTING_CORES 2
set env RT_MAX_LAYER met5
set env RT_MIN_LAYER met1
set env SAVE_DEF ./out.def
set env SAVE_NETLIST ./results/routing/user_project_wrapper.nl.v
set env SAVE_ODB ./out.odb
set env SAVE_POWERED_NETLIST ./results/routing/user_project_wrapper.pnl.v
set env SCRIPTS_DIR openlane/scripts
set env STD_CELL_GROUND_PINS VGND VNB
set env STD_CELL_POWER_PINS VPWR VPB
set env VDD_NET vccd1
set env _tmp_drt_file_prefix ./tmp/routing/drt
set env _tmp_drt_rpt_prefix ./reports/routing/drt