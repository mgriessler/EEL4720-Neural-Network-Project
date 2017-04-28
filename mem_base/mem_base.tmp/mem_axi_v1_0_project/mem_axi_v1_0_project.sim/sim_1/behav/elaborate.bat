@echo off
set xv_path=C:\\Xilinx\\Vivado\\2016.4\\bin
call %xv_path%/xelab  -wto 19a7b5b39f7741d6b525111110a36181 -m64 --debug typical --relax --mt 2 -L work -L secureip --snapshot user_app_tb_behav work.user_app_tb -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
