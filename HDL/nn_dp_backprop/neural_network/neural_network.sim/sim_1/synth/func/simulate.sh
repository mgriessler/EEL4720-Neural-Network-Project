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
ExecStep $xv_path/bin/xsim neuron_tb_func_synth -key {Post-Synthesis:sim_1:Functional:neuron_tb} -tclbatch neuron_tb.tcl -log simulate.log
