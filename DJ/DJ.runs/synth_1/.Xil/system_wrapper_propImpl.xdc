set_property SRC_FILE_INFO {cfile:/home/jaxc/FPGA/zybo_base_system/source/vivado/hw/zybo_bsd/zybo_bsd.srcs/sources_1/bd/system/ip/system_processing_system7_0_0/system_processing_system7_0_0.xdc rfile:../../../../../zybo_base_system/source/vivado/hw/zybo_bsd/zybo_bsd.srcs/sources_1/bd/system/ip/system_processing_system7_0_0/system_processing_system7_0_0.xdc id:1 order:EARLY scoped_inst:system_i/processing_system7_0/inst} [current_design]
set_property SRC_FILE_INFO {cfile:/home/jaxc/FPGA/DJ-Jaxc/DJ/DJ.runs/synth_1/dont_touch.xdc rfile:../dont_touch.xdc id:2} [current_design]
set_property src_info {type:SCOPED_XDC file:1 line:21 export:INPUT save:INPUT read:READ} [current_design]
set_input_jitter clk_fpga_2 2.44614
set_property src_info {type:SCOPED_XDC file:1 line:24 export:INPUT save:INPUT read:READ} [current_design]
set_input_jitter clk_fpga_1 0.19998
set_property src_info {type:SCOPED_XDC file:1 line:27 export:INPUT save:INPUT read:READ} [current_design]
set_input_jitter clk_fpga_0 0.3
set_property src_info {type:XDC file:2 line:28 export:INPUT save:INPUT read:READ} [current_design]
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==system_xbar_1 || ORIG_REF_NAME==system_xbar_1}]
set_property src_info {type:XDC file:2 line:61 export:INPUT save:INPUT read:READ} [current_design]
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==system_xbar_0 || ORIG_REF_NAME==system_xbar_0}]
set_property src_info {type:XDC file:2 line:64 export:INPUT save:INPUT read:READ} [current_design]
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==system_xbar_2 || ORIG_REF_NAME==system_xbar_2}]
set_property src_info {type:XDC file:2 line:67 export:INPUT save:INPUT read:READ} [current_design]
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==system_xbar_3 || ORIG_REF_NAME==system_xbar_3}]
