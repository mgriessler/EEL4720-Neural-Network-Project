@echo off
set xv_path=C:\\Xilinx\\Vivado\\2016.4\\bin
call %xv_path%/xsim dbl_mem_top_tb_behav -key {Behavioral:sim_1:Functional:dbl_mem_top_tb} -tclbatch dbl_mem_top_tb.tcl -view C:/Users/Matthew/SkyDrive/_school/spring 2017 UF/EEL4720 09BC Reconfig/project/EEL4720-Neural-Network-Project/test_projects/dblbufmem/dbl_mem_top_tb_behav.wcfg -log simulate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
