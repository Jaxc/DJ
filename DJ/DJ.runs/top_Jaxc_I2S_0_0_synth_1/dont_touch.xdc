# This file is automatically generated.
# It contains project source information necessary for synthesis and implementation.

# IP: /home/jaxc/FPGA/DJ-Jaxc/DJ/DJ.srcs/sources_1/bd/top/ip/top_Jaxc_I2S_0_0/top_Jaxc_I2S_0_0.xci
# IP: The module: 'top_Jaxc_I2S_0_0' is the root of the design. Do not add the DONT_TOUCH constraint.

# IP: /home/jaxc/FPGA/DJ-Jaxc/DJ/DJ.srcs/sources_1/bd/top/ip/top_Jaxc_I2S_0_0/sources_1/ip/Output_buffer_Block_RAM/Output_buffer_Block_RAM.xci
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==Output_buffer_Block_RAM || ORIG_REF_NAME==Output_buffer_Block_RAM}]

# IP: /home/jaxc/FPGA/DJ-Jaxc/DJ/DJ.srcs/sources_1/bd/top/ip/top_Jaxc_I2S_0_0/clk_wiz_0/ip/clk_wiz_0/clk_wiz_0.xci
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==clk_wiz_0 || ORIG_REF_NAME==clk_wiz_0}]

# XDC: /home/jaxc/FPGA/DJ-Jaxc/DJ/DJ.srcs/sources_1/bd/top/ip/top_Jaxc_I2S_0_0/sources_1/ip/Output_buffer_Block_RAM/Output_buffer_Block_RAM_ooc.xdc

# XDC: /home/jaxc/FPGA/DJ-Jaxc/DJ/DJ.srcs/sources_1/bd/top/ip/top_Jaxc_I2S_0_0/clk_wiz_0/ip/clk_wiz_0/clk_wiz_0.xdc
set_property DONT_TOUCH TRUE [get_cells [split [join [get_cells -hier -filter {REF_NAME==clk_wiz_0 || ORIG_REF_NAME==clk_wiz_0}] {/inst }]/inst ]]

# XDC: /home/jaxc/FPGA/DJ-Jaxc/DJ/DJ.srcs/sources_1/bd/top/ip/top_Jaxc_I2S_0_0/clk_wiz_0/ip/clk_wiz_0/clk_wiz_0_ooc.xdc

# XDC: /home/jaxc/FPGA/DJ-Jaxc/DJ/DJ.srcs/sources_1/bd/top/ip/top_Jaxc_I2S_0_0/constrs_1/imports/constraints/i2s.xdc
# XDC: The top module name and the constraint reference have the same name: 'top_Jaxc_I2S_0_0'. Do not add the DONT_TOUCH constraint.
set_property DONT_TOUCH TRUE [get_cells U0]

# IP: /home/jaxc/FPGA/DJ-Jaxc/DJ/DJ.srcs/sources_1/bd/top/ip/top_Jaxc_I2S_0_0/top_Jaxc_I2S_0_0.xci
# IP: The module: 'top_Jaxc_I2S_0_0' is the root of the design. Do not add the DONT_TOUCH constraint.

# IP: /home/jaxc/FPGA/DJ-Jaxc/DJ/DJ.srcs/sources_1/bd/top/ip/top_Jaxc_I2S_0_0/sources_1/ip/Output_buffer_Block_RAM/Output_buffer_Block_RAM.xci
#dup# set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==Output_buffer_Block_RAM || ORIG_REF_NAME==Output_buffer_Block_RAM}]

# IP: /home/jaxc/FPGA/DJ-Jaxc/DJ/DJ.srcs/sources_1/bd/top/ip/top_Jaxc_I2S_0_0/clk_wiz_0/ip/clk_wiz_0/clk_wiz_0.xci
#dup# set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==clk_wiz_0 || ORIG_REF_NAME==clk_wiz_0}]

# XDC: /home/jaxc/FPGA/DJ-Jaxc/DJ/DJ.srcs/sources_1/bd/top/ip/top_Jaxc_I2S_0_0/sources_1/ip/Output_buffer_Block_RAM/Output_buffer_Block_RAM_ooc.xdc

# XDC: /home/jaxc/FPGA/DJ-Jaxc/DJ/DJ.srcs/sources_1/bd/top/ip/top_Jaxc_I2S_0_0/clk_wiz_0/ip/clk_wiz_0/clk_wiz_0.xdc
#dup# set_property DONT_TOUCH TRUE [get_cells [split [join [get_cells -hier -filter {REF_NAME==clk_wiz_0 || ORIG_REF_NAME==clk_wiz_0}] {/inst }]/inst ]]

# XDC: /home/jaxc/FPGA/DJ-Jaxc/DJ/DJ.srcs/sources_1/bd/top/ip/top_Jaxc_I2S_0_0/clk_wiz_0/ip/clk_wiz_0/clk_wiz_0_ooc.xdc

# XDC: /home/jaxc/FPGA/DJ-Jaxc/DJ/DJ.srcs/sources_1/bd/top/ip/top_Jaxc_I2S_0_0/constrs_1/imports/constraints/i2s.xdc
# XDC: The top module name and the constraint reference have the same name: 'top_Jaxc_I2S_0_0'. Do not add the DONT_TOUCH constraint.
#dup# set_property DONT_TOUCH TRUE [get_cells U0]
