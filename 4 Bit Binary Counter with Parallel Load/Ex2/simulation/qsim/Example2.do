onerror {quit -f}
vlib work
vlog -work work Example2.vo
vlog -work work Example2.vt
vsim -novopt -c -t 1ps -L cycloneiii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.Example2_vlg_vec_tst
vcd file -direction Example2.msim.vcd
vcd add -internal Example2_vlg_vec_tst/*
vcd add -internal Example2_vlg_vec_tst/i1/*
add wave /*
run -all
