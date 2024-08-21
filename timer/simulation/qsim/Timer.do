onerror {quit -f}
vlib work
vlog -work work Timer.vo
vlog -work work Timer.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.Timer_vlg_vec_tst
vcd file -direction Timer.msim.vcd
vcd add -internal Timer_vlg_vec_tst/*
vcd add -internal Timer_vlg_vec_tst/i1/*
add wave /*
run -all
