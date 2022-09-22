onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib axi_xadc_bd_opt

do {wave.do}

view wave
view structure
view signals

do {axi_xadc_bd.udo}

run -all

quit -force
