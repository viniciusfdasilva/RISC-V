transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/dayan/OneDrive/Documentos/RISC-V/VHDL/Estrutura da ULA em partes/Somados de 1 bit/somador_1bit.vhd}

vcom -93 -work work {C:/Users/dayan/OneDrive/Documentos/RISC-V/VHDL/Estrutura da ULA em partes/Somados de 1 bit/simulation/modelsim/somador_1bit.vht}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cyclonev -L rtl_work -L work -voptargs="+acc"  somador_1bit_test

add wave *
view structure
view signals
run -all
