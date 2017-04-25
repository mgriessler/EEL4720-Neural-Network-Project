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
ExecStep $xv_path/bin/xsim neuron_tb_func_impl -key {Post-Implementation:sim_1:Functional:neuron_tb} -tclbatch neuron_tb.tcl -log simulate.log
