transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/Users/ivano/Desktop/Sergio\ Todo/Arquitectura/sum4bc {C:/Users/ivano/Desktop/Sergio Todo/Arquitectura/sum4bc/Sum4bcc.v}
vlog -vlog01compat -work work +incdir+C:/Users/ivano/Desktop/Sergio\ Todo/Arquitectura/sum4bc {C:/Users/ivano/Desktop/Sergio Todo/Arquitectura/sum4bc/Verilog2.v}

vlog -vlog01compat -work work +incdir+C:/Users/ivano/Desktop/Sergio\ Todo/Arquitectura/sum4bc/../sumador/sumado {C:/Users/ivano/Desktop/Sergio Todo/Arquitectura/sum4bc/../sumador/sumado/testbench.v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L fiftyfivenm_ver -L rtl_work -L work -voptargs="+acc"  testbench

add wave *
view structure
view signals
run -all