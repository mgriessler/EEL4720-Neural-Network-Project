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
ExecStep $xv_path/bin/xelab -wto ebae1fb47d514e0882e68ef289259d16 -m64 --debug typical --relax --mt 8 --maxdelay -L xil_defaultlib -L work -L simprims_ver -L secureip --snapshot MAC_tb_time_synth -transport_int_delays -pulse_r 0 -pulse_int_r 0 xil_defaultlib.MAC_tb xil_defaultlib.glbl -log elaborate.log
