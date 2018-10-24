onerror {quit -f}
vlib work
vlog -work work bussystem.vo
vlog -work work bussystem.vt
vsim -novopt -c -t 1ps -L cycloneiii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.bussystem_vlg_vec_tst
vcd file -direction bussystem.msim.vcd
vcd add -internal bussystem_vlg_vec_tst/*
vcd add -internal bussystem_vlg_vec_tst/i1/*
add wave /*
run -all
