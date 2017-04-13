onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib dbl_mem_0_opt

do {wave.do}

view wave
view structure
view signals

do {dbl_mem_0.udo}

run -all

quit -force
