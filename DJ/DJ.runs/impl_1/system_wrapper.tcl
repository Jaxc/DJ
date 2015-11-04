proc start_step { step } {
  set stopFile ".stop.rst"
  if {[file isfile .stop.rst]} {
    puts ""
    puts "*** Halting run - EA reset detected ***"
    puts ""
    puts ""
    return -code error
  }
  set beginFile ".$step.begin.rst"
  set platform "$::tcl_platform(platform)"
  set user "$::tcl_platform(user)"
  set pid [pid]
  set host ""
  if { [string equal $platform unix] } {
    if { [info exist ::env(HOSTNAME)] } {
      set host $::env(HOSTNAME)
    }
  } else {
    if { [info exist ::env(COMPUTERNAME)] } {
      set host $::env(COMPUTERNAME)
    }
  }
  set ch [open $beginFile w]
  puts $ch "<?xml version=\"1.0\"?>"
  puts $ch "<ProcessHandle Version=\"1\" Minor=\"0\">"
  puts $ch "    <Process Command=\".planAhead.\" Owner=\"$user\" Host=\"$host\" Pid=\"$pid\">"
  puts $ch "    </Process>"
  puts $ch "</ProcessHandle>"
  close $ch
}

proc end_step { step } {
  set endFile ".$step.end.rst"
  set ch [open $endFile w]
  close $ch
}

proc step_failed { step } {
  set endFile ".$step.error.rst"
  set ch [open $endFile w]
  close $ch
}

set_msg_config -id {Common-41} -limit 4294967295
set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
set_msg_config  -id {Labtools 27-3175}  -string {{ERROR: [Labtools 27-3175] Target jsn-Zybo-210279655213A is no longer available.
Please use disconnect_hw_server to close the current server connection. Check cable connectivity and that the target board is powered up.
Restart the hw_server application running on host localhost, port 3121 and then use connect_hw_server to re-establish connection to target.}}  -suppress 

start_step init_design
set rc [catch {
  create_msg_db init_design.pb
  debug::add_scope template.lib 1
  set_property design_mode GateLvl [current_fileset]
  set_property webtalk.parent_dir /home/jaxc/FPGA/DJ-Jaxc/DJ/DJ.cache/wt [current_project]
  set_property parent.project_path /home/jaxc/FPGA/DJ-Jaxc/DJ/DJ.xpr [current_project]
  set_property ip_repo_paths {
  /home/jaxc/FPGA/DJ-Jaxc/DJ/DJ.cache/ip
  /home/jaxc/FPGA/IP
  /home/jaxc/FPGA/zybo_base_system/source/vivado/hw/ip_repo
} [current_project]
  set_property ip_output_repo /home/jaxc/FPGA/DJ-Jaxc/DJ/DJ.cache/ip [current_project]
  add_files -quiet /home/jaxc/FPGA/DJ-Jaxc/DJ/DJ.runs/synth_1/system_wrapper.dcp
  read_xdc -prop_thru_buffers -ref system_BTNs_4Bits_0 -cells U0 /home/jaxc/FPGA/zybo_base_system/source/vivado/hw/zybo_bsd/zybo_bsd.srcs/sources_1/bd/system/ip/system_BTNs_4Bits_0/system_BTNs_4Bits_0_board.xdc
  set_property processing_order EARLY [get_files /home/jaxc/FPGA/zybo_base_system/source/vivado/hw/zybo_bsd/zybo_bsd.srcs/sources_1/bd/system/ip/system_BTNs_4Bits_0/system_BTNs_4Bits_0_board.xdc]
  read_xdc -ref system_BTNs_4Bits_0 -cells U0 /home/jaxc/FPGA/zybo_base_system/source/vivado/hw/zybo_bsd/zybo_bsd.srcs/sources_1/bd/system/ip/system_BTNs_4Bits_0/system_BTNs_4Bits_0.xdc
  set_property processing_order EARLY [get_files /home/jaxc/FPGA/zybo_base_system/source/vivado/hw/zybo_bsd/zybo_bsd.srcs/sources_1/bd/system/ip/system_BTNs_4Bits_0/system_BTNs_4Bits_0.xdc]
  read_xdc -prop_thru_buffers -ref system_SWs_4Bits_2 -cells U0 /home/jaxc/FPGA/zybo_base_system/source/vivado/hw/zybo_bsd/zybo_bsd.srcs/sources_1/bd/system/ip/system_SWs_4Bits_2/system_SWs_4Bits_2_board.xdc
  set_property processing_order EARLY [get_files /home/jaxc/FPGA/zybo_base_system/source/vivado/hw/zybo_bsd/zybo_bsd.srcs/sources_1/bd/system/ip/system_SWs_4Bits_2/system_SWs_4Bits_2_board.xdc]
  read_xdc -ref system_SWs_4Bits_2 -cells U0 /home/jaxc/FPGA/zybo_base_system/source/vivado/hw/zybo_bsd/zybo_bsd.srcs/sources_1/bd/system/ip/system_SWs_4Bits_2/system_SWs_4Bits_2.xdc
  set_property processing_order EARLY [get_files /home/jaxc/FPGA/zybo_base_system/source/vivado/hw/zybo_bsd/zybo_bsd.srcs/sources_1/bd/system/ip/system_SWs_4Bits_2/system_SWs_4Bits_2.xdc]
  read_xdc -ref system_processing_system7_0_0 -cells inst /home/jaxc/FPGA/zybo_base_system/source/vivado/hw/zybo_bsd/zybo_bsd.srcs/sources_1/bd/system/ip/system_processing_system7_0_0/system_processing_system7_0_0.xdc
  set_property processing_order EARLY [get_files /home/jaxc/FPGA/zybo_base_system/source/vivado/hw/zybo_bsd/zybo_bsd.srcs/sources_1/bd/system/ip/system_processing_system7_0_0/system_processing_system7_0_0.xdc]
  read_xdc -ref system_xadc_wiz_0_0 -cells U0 /home/jaxc/FPGA/zybo_base_system/source/vivado/hw/zybo_bsd/zybo_bsd.srcs/sources_1/bd/system/ip/system_xadc_wiz_0_0/system_xadc_wiz_0_0.xdc
  set_property processing_order EARLY [get_files /home/jaxc/FPGA/zybo_base_system/source/vivado/hw/zybo_bsd/zybo_bsd.srcs/sources_1/bd/system/ip/system_xadc_wiz_0_0/system_xadc_wiz_0_0.xdc]
  read_xdc -ref system_CLK_test_0_0 -cells U0 /home/jaxc/FPGA/zybo_base_system/source/vivado/hw/zybo_bsd/zybo_bsd.srcs/sources_1/ipshared/constrs_1/new/constraints.xdc
  set_property processing_order EARLY [get_files /home/jaxc/FPGA/zybo_base_system/source/vivado/hw/zybo_bsd/zybo_bsd.srcs/sources_1/ipshared/constrs_1/new/constraints.xdc]
  read_xdc -ref system_Jaxc_I2S_1_0 -cells U0 /home/jaxc/FPGA/zybo_base_system/source/vivado/hw/zybo_bsd/zybo_bsd.srcs/sources_1/bd/system/ip/system_Jaxc_I2S_1_0/constrs_1/imports/constraints/i2s.xdc
  set_property processing_order EARLY [get_files /home/jaxc/FPGA/zybo_base_system/source/vivado/hw/zybo_bsd/zybo_bsd.srcs/sources_1/bd/system/ip/system_Jaxc_I2S_1_0/constrs_1/imports/constraints/i2s.xdc]
  read_xdc -ref system_mailbox_0_0 -cells U0 /home/jaxc/FPGA/zybo_base_system/source/vivado/hw/zybo_bsd/zybo_bsd.srcs/sources_1/bd/system/ip/system_mailbox_0_0/system_mailbox_0_0.xdc
  set_property processing_order EARLY [get_files /home/jaxc/FPGA/zybo_base_system/source/vivado/hw/zybo_bsd/zybo_bsd.srcs/sources_1/bd/system/ip/system_mailbox_0_0/system_mailbox_0_0.xdc]
  read_xdc /home/jaxc/FPGA/DJ-Jaxc/DJ/DJ.srcs/constrs_1/new/const.xdc
  link_design -top system_wrapper -part xc7z010clg400-1
  close_msg_db -file init_design.pb
} RESULT]
if {$rc} {
  step_failed init_design
  return -code error $RESULT
} else {
  end_step init_design
}

start_step opt_design
set rc [catch {
  create_msg_db opt_design.pb
  catch {write_debug_probes -quiet -force debug_nets}
  opt_design 
  write_checkpoint -force system_wrapper_opt.dcp
  catch {report_drc -file system_wrapper_drc_opted.rpt}
  close_msg_db -file opt_design.pb
} RESULT]
if {$rc} {
  step_failed opt_design
  return -code error $RESULT
} else {
  end_step opt_design
}

start_step place_design
set rc [catch {
  create_msg_db place_design.pb
  catch {write_hwdef -file system_wrapper.hwdef}
  place_design 
  write_checkpoint -force system_wrapper_placed.dcp
  catch { report_io -file system_wrapper_io_placed.rpt }
  catch { report_utilization -file system_wrapper_utilization_placed.rpt -pb system_wrapper_utilization_placed.pb }
  catch { report_control_sets -verbose -file system_wrapper_control_sets_placed.rpt }
  close_msg_db -file place_design.pb
} RESULT]
if {$rc} {
  step_failed place_design
  return -code error $RESULT
} else {
  end_step place_design
}

start_step route_design
set rc [catch {
  create_msg_db route_design.pb
  route_design 
  write_checkpoint -force system_wrapper_routed.dcp
  catch { report_drc -file system_wrapper_drc_routed.rpt -pb system_wrapper_drc_routed.pb }
  catch { report_timing_summary -warn_on_violation -max_paths 10 -file system_wrapper_timing_summary_routed.rpt -rpx system_wrapper_timing_summary_routed.rpx }
  catch { report_power -file system_wrapper_power_routed.rpt -pb system_wrapper_power_summary_routed.pb }
  catch { report_route_status -file system_wrapper_route_status.rpt -pb system_wrapper_route_status.pb }
  catch { report_clock_utilization -file system_wrapper_clock_utilization_routed.rpt }
  close_msg_db -file route_design.pb
} RESULT]
if {$rc} {
  step_failed route_design
  return -code error $RESULT
} else {
  end_step route_design
}

start_step write_bitstream
set rc [catch {
  create_msg_db write_bitstream.pb
  write_bitstream -force system_wrapper.bit 
  catch { write_sysdef -hwdef system_wrapper.hwdef -bitfile system_wrapper.bit -meminfo system_wrapper.mmi -ltxfile debug_nets.ltx -file system_wrapper.sysdef }
  close_msg_db -file write_bitstream.pb
} RESULT]
if {$rc} {
  step_failed write_bitstream
  return -code error $RESULT
} else {
  end_step write_bitstream
}
