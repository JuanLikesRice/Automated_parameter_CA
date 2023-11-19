vlib work
vlib riviera

vlib riviera/xil_defaultlib

vmap xil_defaultlib riviera/xil_defaultlib

vlog -work xil_defaultlib  -v2k5 \
"c:/juwan_projects/nexy4ddr_CA/nexy4ddr_CA.gen/sources_1/ip/bscan_jtag_0/bscan_jtag_0_sim_netlist.v" \


vlog -work xil_defaultlib \
"glbl.v"

