onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib drp_example_opt

do {wave.do}

view wave
view structure
view signals

do {drp_example.udo}

run -all

quit -force
