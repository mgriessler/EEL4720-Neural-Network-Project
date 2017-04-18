#!/bin/bash -f
xv_path="/opt/Xilinx/Vivado/2015.4"
ExecStep()
{
"$@"
RETVAL=$?
if [ $RETVAL -ne 0 ]
then
exit $RETVAL
fi
}
ExecStep $xv_path/bin/xelab -wto 033c32e977bb49479b0c16a31a9163ac -m64 --debug typical --relax --mt 8 -L work -L secureip --snapshot user_app_tb_behav work.user_app_tb -log elaborate.log
