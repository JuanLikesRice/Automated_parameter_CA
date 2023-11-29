vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xil_defaultlib

vmap xil_defaultlib questa_lib/msim/xil_defaultlib

vlog -work xil_defaultlib  -incr -mfcu \
"c:/juwan_projects/nexy4ddr_CA/nexy4ddr_CA.gen/sources_1/ip/bscan_jtag_0/bscan_jtag_0_sim_netlist.v" \


vlog -work xil_defaultlib \
"glbl.v"

