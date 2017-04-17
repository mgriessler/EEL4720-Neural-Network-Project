@echo off
set xv_path=C:\\Xilinx\\Vivado\\2016.4\\bin
call %xv_path%/xelab  -wto e507fd5a09704a2698dc0b532aa1c852 -m64 --debug typical --relax --mt 2 -L work -L secureip --snapshot user_app_tb_behav work.user_app_tb -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
