set_property PACKAGE_PIN M14 [get_ports {LED_out[0]}]
set_property PACKAGE_PIN M15 [get_ports {LED_out[1]}]
set_property PACKAGE_PIN G14 [get_ports {LED_out[2]}]
set_property PACKAGE_PIN D18 [get_ports {LED_out[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {LED_out[*]}]

set_property PACKAGE_PIN N18 [get_ports iic_0_scl_io]
set_property IOSTANDARD LVCMOS33 [get_ports iic_0_scl_io]
set_property PACKAGE_PIN N17 [get_ports iic_0_sda_io]
set_property IOSTANDARD LVCMOS33 [get_ports iic_0_sda_io]

set_property PACKAGE_PIN P18 [get_ports {MUTE[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {MUTE[0]}]

set_property PACKAGE_PIN M17 [get_ports {PBDAT[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {PBDAT[0]}]
set_property PACKAGE_PIN L17 [get_ports {PBLRC[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {PBLRC[0]}]


set_property PACKAGE_PIN K18 [get_ports {BCLK[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {BCLK[0]}]
create_clock -period 434.972 -name B_CLK -waveform {0.000 217.486} [get_ports BCLK]

set_property IOSTANDARD LVCMOS33 [get_ports MCLK]
set_property PACKAGE_PIN T19 [get_ports MCLK]

set_property PACKAGE_PIN G15 [get_ports {sws_4bits_tri_i[0]}]
set_property PACKAGE_PIN P15 [get_ports {sws_4bits_tri_i[1]}]
set_property PACKAGE_PIN W13 [get_ports {sws_4bits_tri_i[2]}]
set_property PACKAGE_PIN T16 [get_ports {sws_4bits_tri_i[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {sws_4bits_tri_i[*]}]

set_property PACKAGE_PIN R18 [get_ports {btns_4bits_tri_i[0]}]
set_property PACKAGE_PIN P16 [get_ports {btns_4bits_tri_i[1]}]
set_property PACKAGE_PIN V16 [get_ports {btns_4bits_tri_i[2]}]
set_property PACKAGE_PIN Y16 [get_ports {btns_4bits_tri_i[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {btns_4bits_tri_i[*]}]


set_property PACKAGE_PIN K17 [get_ports {ADC_DATA_in[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {ADC_DATA_in[0]}]

set_false_path -from [get_clocks clk_fpga_2] -to [get_clocks clk_fpga_0]
set_false_path -from [get_clocks clk_fpga_0] -to [get_clocks clk_fpga_2]
