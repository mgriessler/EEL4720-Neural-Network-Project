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
ExecStep $xv_path/bin/xelab -wto ebae1fb47d514e0882e68ef289259d16 -m64 --debug typical --relax --mt 8 -L xil_defaultlib -L work -L secureip --snapshot neural_network_top_tb_func_synth xil_defaultlib.neural_network_top_tb -log elaborate.log
