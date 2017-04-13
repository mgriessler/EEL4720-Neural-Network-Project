onbreak {quit -force}
onerror {quit -force}

asim -t 1ps +access +r +m+nn_wrapper_0 -L xil_defaultlib -L secureip -O5 xil_defaultlib.nn_wrapper_0

do {wave.do}

view wave
view structure

do {nn_wrapper_0.udo}

run -all

endsim

quit -force
