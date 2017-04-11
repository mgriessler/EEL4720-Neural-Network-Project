@echo off
set xv_path=C:\\Xilinx\\Vivado\\2016.4\\bin
call %xv_path%/xelab  -wto 5083fe83cb204e56948705225700aae0 -m64 --debug typical --relax --mt 2 -L xil_defaultlib -L secureip --snapshot tb_behav xil_defaultlib.tb -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
