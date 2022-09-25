onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib bd_axi_gpio_opt

do {wave.do}

view wave
view structure
view signals

do {bd_axi_gpio.udo}

run -all

quit -force
