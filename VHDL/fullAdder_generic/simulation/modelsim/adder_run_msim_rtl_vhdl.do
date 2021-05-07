transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/dayan/OneDrive/Documentos/RISC-V/VHDL/fullAdder_generic/adder.vhd}
vcom -93 -work work {C:/Users/dayan/OneDrive/Documentos/RISC-V/VHDL/fullAdder_generic/adder_1bit.vhd}

vcom -93 -work work {C:/Users/dayan/OneDrive/Documentos/RISC-V/VHDL/fullAdder_generic/simulation/modelsim/adder.vht}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cyclonev -L rtl_work -L work -voptargs="+acc"  adder_test

add wave *
view structure
view signals
run -all
