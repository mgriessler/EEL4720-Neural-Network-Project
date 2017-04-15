onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib nn_user_app_0_opt

do {wave.do}

view wave
view structure
view signals

do {nn_user_app_0.udo}

run -all

quit -force
