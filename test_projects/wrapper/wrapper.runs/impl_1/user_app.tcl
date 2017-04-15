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

set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
set_msg_config -id {Synth 8-256} -limit 10000
set_msg_config -id {Synth 8-638} -limit 10000

start_step init_design
set ACTIVE_STEP init_design
set rc [catch {
  create_msg_db init_design.pb
  create_project -in_memory -part xc7z020clg484-1
  set_property board_part em.avnet.com:zed:part0:1.3 [current_project]
  set_property design_mode GateLvl [current_fileset]
  set_param project.singleFileAddWarning.threshold 0
  set_property webtalk.parent_dir {C:/Users/Matthew/SkyDrive/_school/spring 2017 UF/EEL4720 09BC Reconfig/project/EEL4720-Neural-Network-Project/test_projects/wrapper/wrapper.cache/wt} [current_project]
  set_property parent.project_path {C:/Users/Matthew/SkyDrive/_school/spring 2017 UF/EEL4720 09BC Reconfig/project/EEL4720-Neural-Network-Project/test_projects/wrapper/wrapper.xpr} [current_project]
  set_property ip_repo_paths {
  {C:/users/matthew/skydrive/_school/spring 2017 uf/eel4720 09bc reconfig/project/eel4720-neural-network-project/ip/wrapper.srcs}
  {C:/Users/Matthew/SkyDrive/_school/spring 2017 UF/EEL4720 09BC Reconfig/project/EEL4720-Neural-Network-Project/ip/dblbufmem.srcs}
  {C:/Users/Matthew/SkyDrive/_school/spring 2017 UF/EEL4720 09BC Reconfig/project/EEL4720-Neural-Network-Project/ip/nn_wrapper.srcs}
} [current_project]
  set_property ip_output_repo {{C:/Users/Matthew/SkyDrive/_school/spring 2017 UF/EEL4720 09BC Reconfig/project/EEL4720-Neural-Network-Project/test_projects/wrapper/wrapper.cache/ip}} [current_project]
  set_property ip_cache_permissions {read write} [current_project]
  set_property XPM_LIBRARIES XPM_MEMORY [current_project]
  add_files -quiet {{C:/Users/Matthew/SkyDrive/_school/spring 2017 UF/EEL4720 09BC Reconfig/project/EEL4720-Neural-Network-Project/test_projects/wrapper/wrapper.runs/synth_1/user_app.dcp}}
  add_files -quiet {{c:/Users/Matthew/SkyDrive/_school/spring 2017 UF/EEL4720 09BC Reconfig/project/EEL4720-Neural-Network-Project/test_projects/wrapper/wrapper.srcs/sources_1/ip/dbl_mem_0/dbl_mem_0.dcp}}
  set_property netlist_only true [get_files {{c:/Users/Matthew/SkyDrive/_school/spring 2017 UF/EEL4720 09BC Reconfig/project/EEL4720-Neural-Network-Project/test_projects/wrapper/wrapper.srcs/sources_1/ip/dbl_mem_0/dbl_mem_0.dcp}}]
  add_files -quiet {{c:/Users/Matthew/SkyDrive/_school/spring 2017 UF/EEL4720 09BC Reconfig/project/EEL4720-Neural-Network-Project/test_projects/wrapper/wrapper.srcs/sources_1/ip/nn_wrapper_0/nn_wrapper_0.dcp}}
  set_property netlist_only true [get_files {{c:/Users/Matthew/SkyDrive/_school/spring 2017 UF/EEL4720 09BC Reconfig/project/EEL4720-Neural-Network-Project/test_projects/wrapper/wrapper.srcs/sources_1/ip/nn_wrapper_0/nn_wrapper_0.dcp}}]
  read_xdc -mode out_of_context -ref design_1 {{c:/Users/Matthew/SkyDrive/_school/spring 2017 UF/EEL4720 09BC Reconfig/project/EEL4720-Neural-Network-Project/test_projects/wrapper/wrapper.srcs/sources_1/ip/dbl_mem_0/src/design_1_ooc.xdc}}
  set_property processing_order EARLY [get_files {{c:/Users/Matthew/SkyDrive/_school/spring 2017 UF/EEL4720 09BC Reconfig/project/EEL4720-Neural-Network-Project/test_projects/wrapper/wrapper.srcs/sources_1/ip/dbl_mem_0/src/design_1_ooc.xdc}}]
  read_xdc {{C:/Users/Matthew/SkyDrive/_school/spring 2017 UF/EEL4720 09BC Reconfig/project/EEL4720-Neural-Network-Project/test_projects/wrapper/wrapper.srcs/constrs_2/new/constraints.xdc}}
  link_design -top user_app -part xc7z020clg484-1
  write_hwdef -file user_app.hwdef
  close_msg_db -file init_design.pb
} RESULT]
if {$rc} {
  step_failed init_design
  return -code error $RESULT
} else {
  end_step init_design
  unset ACTIVE_STEP 
}

start_step opt_design
set ACTIVE_STEP opt_design
set rc [catch {
  create_msg_db opt_design.pb
  opt_design 
  write_checkpoint -force user_app_opt.dcp
  catch { report_drc -file user_app_drc_opted.rpt }
  close_msg_db -file opt_design.pb
} RESULT]
if {$rc} {
  step_failed opt_design
  return -code error $RESULT
} else {
  end_step opt_design
  unset ACTIVE_STEP 
}

start_step place_design
set ACTIVE_STEP place_design
set rc [catch {
  create_msg_db place_design.pb
  implement_debug_core 
  place_design 
  write_checkpoint -force user_app_placed.dcp
  catch { report_io -file user_app_io_placed.rpt }
  catch { report_utilization -file user_app_utilization_placed.rpt -pb user_app_utilization_placed.pb }
  catch { report_control_sets -verbose -file user_app_control_sets_placed.rpt }
  close_msg_db -file place_design.pb
} RESULT]
if {$rc} {
  step_failed place_design
  return -code error $RESULT
} else {
  end_step place_design
  unset ACTIVE_STEP 
}

start_step route_design
set ACTIVE_STEP route_design
set rc [catch {
  create_msg_db route_design.pb
  route_design 
  write_checkpoint -force user_app_routed.dcp
  catch { report_drc -file user_app_drc_routed.rpt -pb user_app_drc_routed.pb -rpx user_app_drc_routed.rpx }
  catch { report_methodology -file user_app_methodology_drc_routed.rpt -rpx user_app_methodology_drc_routed.rpx }
  catch { report_timing_summary -warn_on_violation -max_paths 10 -file user_app_timing_summary_routed.rpt -rpx user_app_timing_summary_routed.rpx }
  catch { report_power -file user_app_power_routed.rpt -pb user_app_power_summary_routed.pb -rpx user_app_power_routed.rpx }
  catch { report_route_status -file user_app_route_status.rpt -pb user_app_route_status.pb }
  catch { report_clock_utilization -file user_app_clock_utilization_routed.rpt }
  close_msg_db -file route_design.pb
} RESULT]
if {$rc} {
  write_checkpoint -force user_app_routed_error.dcp
  step_failed route_design
  return -code error $RESULT
} else {
  end_step route_design
  unset ACTIVE_STEP 
}

start_step write_bitstream
set ACTIVE_STEP write_bitstream
set rc [catch {
  create_msg_db write_bitstream.pb
  set_property XPM_LIBRARIES XPM_MEMORY [current_project]
  catch { write_mem_info -force user_app.mmi }
  write_bitstream -force -no_partial_bitfile user_app.bit 
  catch { write_sysdef -hwdef user_app.hwdef -bitfile user_app.bit -meminfo user_app.mmi -file user_app.sysdef }
  catch {write_debug_probes -quiet -force debug_nets}
  close_msg_db -file write_bitstream.pb
} RESULT]
if {$rc} {
  step_failed write_bitstream
  return -code error $RESULT
} else {
  end_step write_bitstream
  unset ACTIVE_STEP 
}

