@echo off
set xv_path=C:\\Xilinx\\Vivado\\2016.4\\bin
call %xv_path%/xsim user_app_tb_behav -key {Behavioral:sim_1:Functional:user_app_tb} -tclbatch user_app_tb.tcl -view c:/users/matthew/documents/git/nn-project/mem_base/mem_base.tmp/mem_axi_v1_0_project/user_app_tb_behav.wcfg -log simulate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
