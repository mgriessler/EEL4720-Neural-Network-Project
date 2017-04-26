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
ExecStep $xv_path/bin/xsim neural_network_top_tb_func_synth -key {Post-Synthesis:sim_1:Functional:neural_network_top_tb} -tclbatch neural_network_top_tb.tcl -view /home/nlandy/Documents/Reconfig/Project/neural_network/neural_network_top_tb_behav.wcfg -log simulate.log
