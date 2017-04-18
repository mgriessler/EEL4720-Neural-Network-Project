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
ExecStep $xv_path/bin/xsim user_app_tb_behav -key {Behavioral:sim_1:Functional:user_app_tb} -tclbatch user_app_tb.tcl -log simulate.log
