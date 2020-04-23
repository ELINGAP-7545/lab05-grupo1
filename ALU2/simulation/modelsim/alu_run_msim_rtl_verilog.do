transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/Users/julia/Documents/GitHub/lab05-grupo1/ALU2/BCDtoSSeg {C:/Users/julia/Documents/GitHub/lab05-grupo1/ALU2/BCDtoSSeg/display.v}
vlog -vlog01compat -work work +incdir+C:/Users/julia/Documents/GitHub/lab05-grupo1/ALU2/BCDtoSSeg {C:/Users/julia/Documents/GitHub/lab05-grupo1/ALU2/BCDtoSSeg/BCDtoSSeg.v}
vlog -vlog01compat -work work +incdir+C:/Users/julia/Documents/GitHub/lab05-grupo1/ALU2/sum4bc {C:/Users/julia/Documents/GitHub/lab05-grupo1/ALU2/sum4bc/Verilog2.v}
vlog -vlog01compat -work work +incdir+C:/Users/julia/Documents/GitHub/lab05-grupo1/ALU2/sum4bc {C:/Users/julia/Documents/GitHub/lab05-grupo1/ALU2/sum4bc/Sum4bcc.v}
vlog -vlog01compat -work work +incdir+C:/Users/julia/Documents/GitHub/lab05-grupo1/ALU2/Restador {C:/Users/julia/Documents/GitHub/lab05-grupo1/ALU2/Restador/Restador.v}
vlog -vlog01compat -work work +incdir+C:/Users/julia/Documents/GitHub/lab05-grupo1/ALU2/Restador {C:/Users/julia/Documents/GitHub/lab05-grupo1/ALU2/Restador/rest1bcc.v}
vlog -vlog01compat -work work +incdir+C:/Users/julia/Documents/GitHub/lab05-grupo1/ALU2/multiplicacion {C:/Users/julia/Documents/GitHub/lab05-grupo1/ALU2/multiplicacion/multiplicador.v}
vlog -vlog01compat -work work +incdir+C:/Users/julia/Documents/GitHub/lab05-grupo1/ALU2 {C:/Users/julia/Documents/GitHub/lab05-grupo1/ALU2/alu.v}

vlog -vlog01compat -work work +incdir+C:/Users/julia/Documents/GitHub/lab05-grupo1/ALU2/../alu {C:/Users/julia/Documents/GitHub/lab05-grupo1/ALU2/../alu/testbench.v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L fiftyfivenm_ver -L rtl_work -L work -voptargs="+acc"  testbench

add wave *
view structure
view signals
run -all