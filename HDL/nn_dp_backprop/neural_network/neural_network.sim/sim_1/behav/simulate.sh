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
ExecStep $xv_path/bin/xsim nn_wrapper_tb_behav -key {Behavioral:sim_1:Functional:nn_wrapper_tb} -tclbatch nn_wrapper_tb.tcl -view /home/nlandy/Documents/Reconfig/Project/neural_network/neural_network_top_tb_behav.wcfg -log simulate.log
