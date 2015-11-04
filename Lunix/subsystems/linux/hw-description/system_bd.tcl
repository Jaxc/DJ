
################################################################
# This is a generated script based on design: system
#
# Though there are limitations about the generated script,
# the main purpose of this utility is to make learning
# IP Integrator Tcl commands easier.
################################################################

################################################################
# Check if script is running in correct Vivado version.
################################################################
set scripts_vivado_version 2015.2
set current_vivado_version [version -short]

if { [string first $scripts_vivado_version $current_vivado_version] == -1 } {
   puts ""
   puts "ERROR: This script was generated using Vivado <$scripts_vivado_version> and is being run in <$current_vivado_version> of Vivado. Please run the script in Vivado <$scripts_vivado_version> then open the design in Vivado <$current_vivado_version>. Upgrade the design by running \"Tools => Report => Report IP Status...\", then run write_bd_tcl to create an updated script."

   return 1
}

################################################################
# START
################################################################

# To test this script, run the following commands from Vivado Tcl console:
# source system_script.tcl

# If you do not already have a project created,
# you can create a project using the following command:
#    create_project project_1 myproj -part xc7z010clg400-1

# CHECKING IF PROJECT EXISTS
if { [get_projects -quiet] eq "" } {
   puts "ERROR: Please open or create a project!"
   return 1
}



# CHANGE DESIGN NAME HERE
set design_name system

# This script was generated for a remote BD.
set str_bd_folder /home/jaxc/FPGA/zybo_base_system/source/vivado/hw/zybo_bsd/zybo_bsd.srcs/sources_1/bd
set str_bd_filepath ${str_bd_folder}/${design_name}/${design_name}.bd

# Check if remote design exists on disk
if { [file exists $str_bd_filepath ] == 1 } {
   puts "ERROR: The remote BD file path <$str_bd_filepath> already exists!"
   return 1
}

# Check if design exists in memory
set list_existing_designs [get_bd_designs -quiet $design_name]
if { $list_existing_designs ne "" } {
   puts "ERROR: The design <$design_name> already exists in this project!"
   puts "ERROR: Will not create the remote BD <$design_name> at the folder <$str_bd_folder>."

   return 1
}

# Check if design exists on disk within project
set list_existing_designs [get_files */${design_name}.bd]
if { $list_existing_designs ne "" } {
   puts "ERROR: The design <$design_name> already exists in this project at location:"
   puts "   $list_existing_designs"
   puts "ERROR: Will not create the remote BD <$design_name> at the folder <$str_bd_folder>."

   return 1
}

# Now can create the remote BD
create_bd_design -dir $str_bd_folder $design_name
current_bd_design $design_name

##################################################################
# DESIGN PROCs
##################################################################



# Procedure to create entire design; Provide argument to make
# procedure reusable. If parentCell is "", will use root.
proc create_root_design { parentCell } {

  if { $parentCell eq "" } {
     set parentCell [get_bd_cells /]
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     puts "ERROR: Unable to find parent cell <$parentCell>!"
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     puts "ERROR: Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj


  # Create interface ports
  set BTNs_4Bits [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:gpio_rtl:1.0 BTNs_4Bits ]
  set DDR [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:ddrx_rtl:1.0 DDR ]
  set FIXED_IO [ create_bd_intf_port -mode Master -vlnv xilinx.com:display_processing_system7:fixedio_rtl:1.0 FIXED_IO ]
  set IIC_0 [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:iic_rtl:1.0 IIC_0 ]
  set SWs_4Bits [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:gpio_rtl:1.0 SWs_4Bits ]

  # Create ports
  set BCLK [ create_bd_port -dir O -type clk BCLK ]
  set LED_out [ create_bd_port -dir O -from 3 -to 0 -type data LED_out ]
  set MCLK [ create_bd_port -dir O -type clk MCLK ]
  set MUTE [ create_bd_port -dir O -from 0 -to 0 MUTE ]
  set PBDAT [ create_bd_port -dir O -type data PBDAT ]
  set PBLRC [ create_bd_port -dir O PBLRC ]
  set Pmod_out [ create_bd_port -dir O -from 2 -to 0 Pmod_out ]

  # Create instance: BTNs_4Bits, and set properties
  set BTNs_4Bits [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_gpio:2.0 BTNs_4Bits ]
  set_property -dict [ list CONFIG.C_ALL_INPUTS {1} CONFIG.C_GPIO_WIDTH {4}  ] $BTNs_4Bits

  # Create instance: CLK_DIV_0, and set properties
  set CLK_DIV_0 [ create_bd_cell -type ip -vlnv Jaxcie.org:user:CLK_DIV:1.0 CLK_DIV_0 ]

  # Create instance: CLK_DIV_1, and set properties
  set CLK_DIV_1 [ create_bd_cell -type ip -vlnv Jaxcie.org:user:CLK_DIV:1.0 CLK_DIV_1 ]
  set_property -dict [ list CONFIG.Division_factor {64}  ] $CLK_DIV_1

  # Create instance: CLK_test_0, and set properties
  set CLK_test_0 [ create_bd_cell -type ip -vlnv Jaxcie.org:user:CLK_test:1.3 CLK_test_0 ]

  # Create instance: FIFO_top_0, and set properties
  set FIFO_top_0 [ create_bd_cell -type ip -vlnv Jaxcie.org:user:FIFO_top:1.0 FIFO_top_0 ]

  # Create instance: Jaxc_I2S_1, and set properties
  set Jaxc_I2S_1 [ create_bd_cell -type ip -vlnv Jaxcie.com:Audio:Jaxc_I2S:1.5.2 Jaxc_I2S_1 ]

  # Create instance: MyLED_0, and set properties
  set MyLED_0 [ create_bd_cell -type ip -vlnv user.org:user:MyLED:1.0 MyLED_0 ]

  # Create instance: SWs_4Bits, and set properties
  set SWs_4Bits [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_gpio:2.0 SWs_4Bits ]
  set_property -dict [ list CONFIG.C_ALL_INPUTS {1} CONFIG.C_GPIO_WIDTH {4}  ] $SWs_4Bits

  # Create instance: axi_protocol_converter_0, and set properties
  set axi_protocol_converter_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_protocol_converter:2.1 axi_protocol_converter_0 ]
  set_property -dict [ list CONFIG.MI_PROTOCOL {AXI4LITE}  ] $axi_protocol_converter_0

  # Create instance: ground, and set properties
  set ground [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 ground ]
  set_property -dict [ list CONFIG.CONST_VAL {0}  ] $ground

  # Create instance: mailbox_0, and set properties
  set mailbox_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:mailbox:2.1 mailbox_0 ]
  set_property -dict [ list CONFIG.C_IMPL_STYLE {1} CONFIG.C_MAILBOX_DEPTH {1024}  ] $mailbox_0

  # Create instance: processing_system7_0, and set properties
  set processing_system7_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:processing_system7:5.5 processing_system7_0 ]
  set_property -dict [ list CONFIG.PCW_ENET0_PERIPHERAL_ENABLE {1} CONFIG.PCW_EN_CLK1_PORT {1} CONFIG.PCW_EN_CLK2_PORT {1} CONFIG.PCW_EN_RST1_PORT {1} CONFIG.PCW_FCLK1_PERIPHERAL_CLKSRC {DDR PLL} CONFIG.PCW_FCLK2_PERIPHERAL_CLKSRC {ARM PLL} CONFIG.PCW_FPGA1_PERIPHERAL_FREQMHZ {150} CONFIG.PCW_FPGA2_PERIPHERAL_FREQMHZ {12.288} CONFIG.PCW_I2C0_PERIPHERAL_ENABLE {1} CONFIG.PCW_IMPORT_BOARD_PRESET {./lib/xml/ZYBO_zynq_def.xml} CONFIG.PCW_IRQ_F2P_INTR {1} CONFIG.PCW_MIO_47_PULLUP {enabled} CONFIG.PCW_QSPI_GRP_SINGLE_SS_ENABLE {1} CONFIG.PCW_SD0_GRP_WP_ENABLE {1} CONFIG.PCW_USE_DMA0 {0} CONFIG.PCW_USE_DMA1 {0} CONFIG.PCW_USE_FABRIC_INTERRUPT {1} CONFIG.PCW_USE_S_AXI_HP0 {0} CONFIG.PCW_USE_S_AXI_HP1 {0}  ] $processing_system7_0

  # Create instance: processing_system7_0_axi_periph, and set properties
  set processing_system7_0_axi_periph [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 processing_system7_0_axi_periph ]
  set_property -dict [ list CONFIG.ENABLE_ADVANCED_OPTIONS {0} CONFIG.M00_HAS_REGSLICE {4} CONFIG.M01_HAS_REGSLICE {4} CONFIG.M02_HAS_REGSLICE {4} CONFIG.M03_HAS_REGSLICE {4} CONFIG.M04_HAS_REGSLICE {4} CONFIG.M05_HAS_REGSLICE {4} CONFIG.M06_HAS_REGSLICE {4} CONFIG.M07_HAS_REGSLICE {4} CONFIG.NUM_MI {8} CONFIG.STRATEGY {1}  ] $processing_system7_0_axi_periph

  # Create instance: xadc_wiz_0, and set properties
  set xadc_wiz_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xadc_wiz:3.1 xadc_wiz_0 ]
  set_property -dict [ list CONFIG.ACQUISITION_TIME {4} CONFIG.CHANNEL_ENABLE_VP_VN {false} CONFIG.ENABLE_RESET {false} CONFIG.ENABLE_TEMP_BUS {false} CONFIG.EXTERNAL_MUXADDR_ENABLE {false} CONFIG.EXTERNAL_MUX_CHANNEL {VP_VN} CONFIG.INTERFACE_SELECTION {Enable_AXI} CONFIG.SEQUENCER_MODE {Off} CONFIG.SINGLE_CHANNEL_ACQUISITION_TIME {false} CONFIG.SINGLE_CHANNEL_SELECTION {TEMPERATURE} CONFIG.STIMULUS_FREQ {1.0} CONFIG.WAVEFORM_TYPE {SIN} CONFIG.XADC_STARUP_SELECTION {single_channel}  ] $xadc_wiz_0

  # Create instance: xlconcat_0, and set properties
  set xlconcat_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 xlconcat_0 ]

  # Create instance: xlconcat_1, and set properties
  set xlconcat_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 xlconcat_1 ]
  set_property -dict [ list CONFIG.NUM_PORTS {3}  ] $xlconcat_1

  # Create interface connections
  connect_bd_intf_net -intf_net BTNs_4Bits_GPIO [get_bd_intf_ports BTNs_4Bits] [get_bd_intf_pins BTNs_4Bits/GPIO]
  connect_bd_intf_net -intf_net SWs_4Bits_GPIO [get_bd_intf_ports SWs_4Bits] [get_bd_intf_pins SWs_4Bits/GPIO]
  connect_bd_intf_net -intf_net processing_system7_0_DDR [get_bd_intf_ports DDR] [get_bd_intf_pins processing_system7_0/DDR]
  connect_bd_intf_net -intf_net processing_system7_0_FIXED_IO [get_bd_intf_ports FIXED_IO] [get_bd_intf_pins processing_system7_0/FIXED_IO]
  connect_bd_intf_net -intf_net processing_system7_0_IIC_0 [get_bd_intf_ports IIC_0] [get_bd_intf_pins processing_system7_0/IIC_0]
  connect_bd_intf_net -intf_net processing_system7_0_M_AXI_GP0 [get_bd_intf_pins axi_protocol_converter_0/M_AXI] [get_bd_intf_pins processing_system7_0_axi_periph/S00_AXI]
  connect_bd_intf_net -intf_net processing_system7_0_M_AXI_GP1 [get_bd_intf_pins axi_protocol_converter_0/S_AXI] [get_bd_intf_pins processing_system7_0/M_AXI_GP0]
  connect_bd_intf_net -intf_net processing_system7_0_axi_periph_M00_AXI [get_bd_intf_pins MyLED_0/S_AXI] [get_bd_intf_pins processing_system7_0_axi_periph/M00_AXI]
  connect_bd_intf_net -intf_net processing_system7_0_axi_periph_M01_AXI [get_bd_intf_pins BTNs_4Bits/S_AXI] [get_bd_intf_pins processing_system7_0_axi_periph/M01_AXI]
  connect_bd_intf_net -intf_net processing_system7_0_axi_periph_M02_AXI [get_bd_intf_pins SWs_4Bits/S_AXI] [get_bd_intf_pins processing_system7_0_axi_periph/M02_AXI]
  connect_bd_intf_net -intf_net processing_system7_0_axi_periph_M03_AXI [get_bd_intf_pins Jaxc_I2S_1/s_axi] [get_bd_intf_pins processing_system7_0_axi_periph/M03_AXI]
  connect_bd_intf_net -intf_net processing_system7_0_axi_periph_M04_AXI [get_bd_intf_pins processing_system7_0_axi_periph/M04_AXI] [get_bd_intf_pins xadc_wiz_0/s_axi_lite]
  connect_bd_intf_net -intf_net processing_system7_0_axi_periph_M05_AXI [get_bd_intf_pins FIFO_top_0/s_axi] [get_bd_intf_pins processing_system7_0_axi_periph/M05_AXI]
  connect_bd_intf_net -intf_net processing_system7_0_axi_periph_M06_AXI [get_bd_intf_pins mailbox_0/S0_AXI] [get_bd_intf_pins processing_system7_0_axi_periph/M06_AXI]
  connect_bd_intf_net -intf_net processing_system7_0_axi_periph_M07_AXI [get_bd_intf_pins mailbox_0/S1_AXI] [get_bd_intf_pins processing_system7_0_axi_periph/M07_AXI]

  # Create port connections
  connect_bd_net -net BCLK_1 [get_bd_ports BCLK] [get_bd_pins CLK_DIV_0/CLK_out] [get_bd_pins CLK_DIV_1/CLK_in] [get_bd_pins CLK_test_0/CLK1] [get_bd_pins Jaxc_I2S_1/BCLK] [get_bd_pins xlconcat_1/In1]
  connect_bd_net -net CLK_DIV_1_CLK_out [get_bd_ports PBLRC] [get_bd_pins CLK_DIV_1/CLK_out] [get_bd_pins CLK_test_0/CLK2] [get_bd_pins Jaxc_I2S_1/PBLRC] [get_bd_pins xlconcat_1/In2]
  connect_bd_net -net CLK_test_0_LED_out [get_bd_ports LED_out] [get_bd_pins CLK_test_0/LED_out]
  connect_bd_net -net Jaxc_I2S_0_PBDAT [get_bd_ports PBDAT] [get_bd_pins Jaxc_I2S_1/PBDAT] [get_bd_pins xlconcat_1/In0]
  connect_bd_net -net Jaxc_I2S_1_MUTE [get_bd_ports MUTE] [get_bd_pins Jaxc_I2S_1/MUTE]
  connect_bd_net -net Jaxc_I2S_1_int_out [get_bd_pins Jaxc_I2S_1/int_out] [get_bd_pins xlconcat_0/In0]
  connect_bd_net -net processing_system7_0_FCLK_CLK0 [get_bd_pins BTNs_4Bits/s_axi_aclk] [get_bd_pins FIFO_top_0/s_aclk] [get_bd_pins Jaxc_I2S_1/s_axi_aclk] [get_bd_pins MyLED_0/s_axi_aclk] [get_bd_pins SWs_4Bits/s_axi_aclk] [get_bd_pins axi_protocol_converter_0/aclk] [get_bd_pins mailbox_0/S0_AXI_ACLK] [get_bd_pins mailbox_0/S1_AXI_ACLK] [get_bd_pins processing_system7_0/FCLK_CLK0] [get_bd_pins processing_system7_0/M_AXI_GP0_ACLK] [get_bd_pins processing_system7_0_axi_periph/ACLK] [get_bd_pins processing_system7_0_axi_periph/M00_ACLK] [get_bd_pins processing_system7_0_axi_periph/M01_ACLK] [get_bd_pins processing_system7_0_axi_periph/M02_ACLK] [get_bd_pins processing_system7_0_axi_periph/M03_ACLK] [get_bd_pins processing_system7_0_axi_periph/M04_ACLK] [get_bd_pins processing_system7_0_axi_periph/M05_ACLK] [get_bd_pins processing_system7_0_axi_periph/M06_ACLK] [get_bd_pins processing_system7_0_axi_periph/M07_ACLK] [get_bd_pins processing_system7_0_axi_periph/S00_ACLK] [get_bd_pins xadc_wiz_0/s_axi_aclk]
  connect_bd_net -net processing_system7_0_FCLK_CLK2 [get_bd_ports MCLK] [get_bd_pins CLK_DIV_0/CLK_in] [get_bd_pins processing_system7_0/FCLK_CLK2]
  connect_bd_net -net rst_processing_system7_0_97M_interconnect_aresetn [get_bd_pins axi_protocol_converter_0/aresetn] [get_bd_pins processing_system7_0/FCLK_RESET0_N] [get_bd_pins processing_system7_0_axi_periph/ARESETN]
  connect_bd_net -net rst_processing_system7_0_97M_peripheral_aresetn [get_bd_pins BTNs_4Bits/s_axi_aresetn] [get_bd_pins CLK_DIV_0/RSTN] [get_bd_pins CLK_DIV_1/RSTN] [get_bd_pins CLK_test_0/rstn] [get_bd_pins FIFO_top_0/s_aresetn] [get_bd_pins Jaxc_I2S_1/s_axi_aresetn] [get_bd_pins MyLED_0/s_axi_aresetn] [get_bd_pins SWs_4Bits/s_axi_aresetn] [get_bd_pins mailbox_0/S0_AXI_ARESETN] [get_bd_pins mailbox_0/S1_AXI_ARESETN] [get_bd_pins processing_system7_0/FCLK_RESET1_N] [get_bd_pins processing_system7_0_axi_periph/M00_ARESETN] [get_bd_pins processing_system7_0_axi_periph/M01_ARESETN] [get_bd_pins processing_system7_0_axi_periph/M02_ARESETN] [get_bd_pins processing_system7_0_axi_periph/M03_ARESETN] [get_bd_pins processing_system7_0_axi_periph/M04_ARESETN] [get_bd_pins processing_system7_0_axi_periph/M05_ARESETN] [get_bd_pins processing_system7_0_axi_periph/M06_ARESETN] [get_bd_pins processing_system7_0_axi_periph/M07_ARESETN] [get_bd_pins processing_system7_0_axi_periph/S00_ARESETN] [get_bd_pins xadc_wiz_0/s_axi_aresetn]
  connect_bd_net -net xadc_wiz_0_user_temp_alarm_out [get_bd_pins xadc_wiz_0/user_temp_alarm_out] [get_bd_pins xlconcat_0/In1]
  connect_bd_net -net xlconcat_0_dout [get_bd_pins processing_system7_0/IRQ_F2P] [get_bd_pins xlconcat_0/dout]
  connect_bd_net -net xlconcat_1_dout [get_bd_ports Pmod_out] [get_bd_pins xlconcat_1/dout]
  connect_bd_net -net xlconstant_0_const [get_bd_pins ground/dout] [get_bd_pins processing_system7_0/SDIO0_WP]

  # Create address segments
  create_bd_addr_seg -range 0x10000 -offset 0x41200000 [get_bd_addr_spaces processing_system7_0/Data] [get_bd_addr_segs BTNs_4Bits/S_AXI/Reg] SEG_BTNs_4Bits_Reg
  create_bd_addr_seg -range 0x10000 -offset 0x60000000 [get_bd_addr_spaces processing_system7_0/Data] [get_bd_addr_segs FIFO_top_0/s_axi/reg0] SEG_FIFO_top_0_reg0
  create_bd_addr_seg -range 0x10000 -offset 0x43C00000 [get_bd_addr_spaces processing_system7_0/Data] [get_bd_addr_segs Jaxc_I2S_1/s_axi/reg0] SEG_Jaxc_I2S_1_reg0
  create_bd_addr_seg -range 0x10000 -offset 0x43C30000 [get_bd_addr_spaces processing_system7_0/Data] [get_bd_addr_segs MyLED_0/S_AXI/S_AXI_reg] SEG_MyLED_0_S_AXI_reg
  create_bd_addr_seg -range 0x10000 -offset 0x41220000 [get_bd_addr_spaces processing_system7_0/Data] [get_bd_addr_segs SWs_4Bits/S_AXI/Reg] SEG_SWs_4Bits_Reg
  create_bd_addr_seg -range 0x10000 -offset 0x43800000 [get_bd_addr_spaces processing_system7_0/Data] [get_bd_addr_segs mailbox_0/S0_AXI/S0_AXI_Reg] SEG_mailbox_0_S0_AXI_Reg
  create_bd_addr_seg -range 0x10000 -offset 0x43810000 [get_bd_addr_spaces processing_system7_0/Data] [get_bd_addr_segs mailbox_0/S1_AXI/S1_AXI_Reg] SEG_mailbox_0_S1_AXI_Reg
  create_bd_addr_seg -range 0x10000 -offset 0x43C10000 [get_bd_addr_spaces processing_system7_0/Data] [get_bd_addr_segs xadc_wiz_0/s_axi_lite/Reg] SEG_xadc_wiz_0_Reg
  

  # Restore current instance
  current_bd_instance $oldCurInst

  save_bd_design
}
# End of create_root_design()


##################################################################
# MAIN FLOW
##################################################################

create_root_design ""


