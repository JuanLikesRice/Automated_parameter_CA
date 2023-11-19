vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xil_defaultlib

vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib

vlog -work xil_defaultlib  -incr -mfcu \
"c:/juwan_projects/nexy4ddr_CA/nexy4ddr_CA.gen/sources_1/ip/bscan_jtag_0/bscan_jtag_0_sim_netlist.v" \


vlog -work xil_defaultlib \
"glbl.v"

