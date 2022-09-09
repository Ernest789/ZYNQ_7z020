onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib ps_xadc_bd_opt

do {wave.do}

view wave
view structure
view signals

do {ps_xadc_bd.udo}

run -all

quit -force
