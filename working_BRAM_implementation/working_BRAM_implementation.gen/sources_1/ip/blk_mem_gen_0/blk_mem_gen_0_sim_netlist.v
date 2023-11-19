// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
// Date        : Mon Nov 13 02:40:48 2023
// Host        : Juwan running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/juwan_projects/Vivado_projects/project_2/project_2.gen/sources_1/ip/blk_mem_gen_0/blk_mem_gen_0_sim_netlist.v
// Design      : blk_mem_gen_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "blk_mem_gen_0,blk_mem_gen_v8_4_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_5,Vivado 2022.1" *) 
(* NotValidForBitStream *)
module blk_mem_gen_0
   (clka,
    ena,
    wea,
    addra,
    dina,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [0:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [9:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [7:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [7:0]douta;

  wire [9:0]addra;
  wire clka;
  wire [7:0]dina;
  wire [7:0]douta;
  wire ena;
  wire [0:0]wea;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_rsta_busy_UNCONNECTED;
  wire NLW_U0_rstb_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [7:0]NLW_U0_doutb_UNCONNECTED;
  wire [9:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [9:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [7:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "10" *) 
  (* C_ADDRB_WIDTH = "10" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "8" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "1" *) 
  (* C_COUNT_36K_BRAM = "0" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "0" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     1.35805 mW" *) 
  (* C_FAMILY = "artix7" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "1" *) 
  (* C_HAS_ENB = "0" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "1" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "0" *) 
  (* C_HAS_RSTB = "0" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "blk_mem_gen_0.mem" *) 
  (* C_INIT_FILE_NAME = "blk_mem_gen_0.mif" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "1" *) 
  (* C_MEM_TYPE = "0" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "1024" *) 
  (* C_READ_DEPTH_B = "1024" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "8" *) 
  (* C_READ_WIDTH_B = "8" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "0" *) 
  (* C_USE_BYTE_WEA = "1" *) 
  (* C_USE_BYTE_WEB = "1" *) 
  (* C_USE_DEFAULT_DATA = "1" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "1" *) 
  (* C_WEB_WIDTH = "1" *) 
  (* C_WRITE_DEPTH_A = "1024" *) 
  (* C_WRITE_DEPTH_B = "1024" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "8" *) 
  (* C_WRITE_WIDTH_B = "8" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  blk_mem_gen_0_blk_mem_gen_v8_4_5 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[7:0]),
        .eccpipece(1'b0),
        .ena(ena),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[9:0]),
        .regcea(1'b0),
        .regceb(1'b0),
        .rsta(1'b0),
        .rsta_busy(NLW_U0_rsta_busy_UNCONNECTED),
        .rstb(1'b0),
        .rstb_busy(NLW_U0_rstb_busy_UNCONNECTED),
        .s_aclk(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_dbiterr(NLW_U0_s_axi_dbiterr_UNCONNECTED),
        .s_axi_injectdbiterr(1'b0),
        .s_axi_injectsbiterr(1'b0),
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[9:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[7:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb(1'b0),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(wea),
        .web(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2022.1"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
RgPKnWr9n0dGgttm3akiFhAlfB96usOQYxnEmPhGyTGg1AbizYAjGPWLXBWl50n/d0IA71ci4aJB
wt6mtfyNADm3ZReK7D3mKu037BOgxryoEwwf1kiC6q/PllxsdAgEMfQrfHJ3E2AzSpdYjoxVYito
y0JW6CUDcWvWa4WV0EA=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
M0l6KpOGH3jL8eRt3NCD7e2USYnkg5H9GAnE1PKmnjiouFN3Y8kjWA2PZDAQLm9UW+TsC1HeVlzO
WjNCHkjR/6ubCsIcWfpPZWdIuAenlsyq8Y9l6b8vMj8JSbDEOiFF/GHSbKsn22MJdDJKEhHFK6GV
s8gR2vywRFwG69gIRE4qGhVB+WIg8GJrDpDMYH6lCjMkTrjXuKDUcNlJN3NPLuhJ7tsditwf1pr5
moJRmGpJnip/rGm0g4o4A6ev4CtePjoao8C1wFtzHkERX9oenhh7cGjDMejU5IrLv8NxFnLj1FpB
9MuF1beTU20NI5oAn6zLiLiOtXjf0ghU3AN4DA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
hAsrUfp6Qgjm8yBjNYTEtQmVQmMxzL8TE/3oiQSxSI3+yEkXAbQCXkT9mo+LCdv+fGECOB0istHd
eLtbsiYbxjxNxYkXiUrRE5O+aSxynIray+uF9DJigTEUZu8JJXUbzxK4DDUu1Lm9tpGps4+Prz1m
0gkj13RT/Y/418s2VTw=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
BP/54Wm/GJmb1jy0bxWJJX4aiKyiWPVh4X3VL30BQrmX4PlEsNKzBJH3Qu8IIYERfnFP0ifAgboa
vypMQ5Ed0BrMePGkWIgT6I8hxJCMFpHdkSK7m1giSKyZzFfTOrVqoNFXE+qdzLfY1J5hBWCvouYo
jllavK4N3gF9FLScH2AUWYVMcVth2QPaTAU2NLnAUNH8kgtBjBfc8/KbPPTznD1QNVqvFstzcbTA
hGQ1ETVPvINQ0KqxxAG5PRhtQD4+pC+hr/Tvk+RSvGyBOfy9zE86OXkJiYs9dSFhNiMFmCPL9DBO
se4OxNNC0/7aBtb1mkSEA9YFDYEb9jS7Jasy2A==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
SnzT9DVH3xlEN8nrr2YrlvTO5qj7L22d7WaBcuKyTaiHoIwwFHrC4HQbfs0TAwkdWcOgmJoATPSF
F6qm0KiddbrlERF3MfKUldeGBJtqLdX+zGw7+3JD7S+HB9dIMOFOHy+IiCZp1/Pz8epKpi238cel
rcVoJQKz406wmXDvOo8KsT+XhRLs9BVCrBErPGGXKYDk6NXAp0duOgQE9DbslzMU83M/kUC7uERV
tQW02240peKQFp2elEZC7Tetvgp0TaFTtJiKN45REi8GQUCKGa85JjNIk1qb/+k95TIIP1xrHirc
6iX7qbwnPetv8TVu2NjkZ0WDEK5RXdOXcxBwHA==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2021_07", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
erkR82V0jX8ytva+9MzEs0c75Z7j7TsgxWRLNAUfbbU28i+U9YzuZlSfYU75M0f9jx1gvxtBrfKv
cNHVdkR+i5zfHDZsDwfMEEBhs8wzDCKqe+eex6BBEvlIOesCPXrr2RozQgaQ1PBh/os2Arfu+873
BjsVxFJkbhpzIqlddOo/XZV9Yi+eih7A7pXXEBR6IL7Poo4Ka49MiVQU0xJrDTm+ddOuMPDRRD7g
dsxS/uzdcBcO2myV6g/7YH/C2Ce9s6+UywJN/0JeXSqwA7bsBqqnfFicVAT0lckLopMLiuzK7dsN
EwhFeqoetciFrDIj9+o0xDMWBZhgNP1u68vURA==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
R+BI65BKLT0I9hEtsxGnDyM5XY9gzULeTPOSDXvd3KWOzZJAx6C0xlbyZcFZhAEG/QIK2yd0wAi6
IUWxyF/sx3HsqKjhVi5KxnpuXDBOZVoj811O7JukedFVmDW7OHGtBkuiJ5X5irw7mfsEKRQmF/1i
V6lj9HYHZEjxtDeZjACsLY4y1QxWalSKT4HIMOHznBLL8dLbGMlS+ZmFuFn0gcwZavVl7gTkTtkf
W0gn01A9ru7NKsf+iLX0kj4dgItPu9N2g02M1vWQ9UUQEVvfV7lUc7GY1suibrD8aEkhH9S7lZ7n
bFsT4qxyvzg8ML6v4g4v7N6VuyhEtgFgNd725Q==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
jNUVKiwH68vHsU54idgvKwaVJcoxTUuxfgrQpbpmM/IpesWA3wHsGzYClwAxkKzw3KRnFyQqTWcZ
yj1EQ2CMBxlJ0kyNbZW8OK8pXzeigToZ0U6Aq3Gy+j7wBbhe83wE1Ygn82sK8dHTEulvaRLn/c5r
ispy1s7jMKIvYNzoUuZrgyBQyfaYmdqUia8XlQjFd+VwzhTXKwzvmaqHWyaHjfBKeCooO7+oUxMG
OJg83W54EVe9ronFQ8Wr9EOL8ia7qelCAgyQe/bC0HHCoMAm8apI7sX23iMR/wMiPP5V2bQzycy+
rBX/+SWkqSeIE1FLm+muFPvrE7iLwJaW8d1fzdFFjAZ5aIXArbWNfwbK8S0TczXc9lEzmpb69rwA
UJIrs4alo81qGQ32UFhjuMQjX75O9Od1HWHDj5PFaT/Ja5Ly+bK8Cc3gfO6dCE81m7d+B2JBZ/Hl
tBA19QuOAYwT2EIPOdpaVtCULb33cWODWu3qQFhZMmDzKTb3kwpcr0LL

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
MnzcA2swaxH1LRacKDou0ZmiiMRETbWIdHgeBgyQz7ILronsXLoB/C20WuFNGEVSiL2/51EZ6MXZ
vMHI8fFcMQCJcuTBDBibUMKv6bXI9s8fTbtrBZppbF/R1icG5JYhqmX4aRnv4W/dxJRjI2L35nLN
Y48E9OfgfkD1sr+IRwx8WEKFmUhuk8dLe0VOK7ywe3XEcneYvrz+HhPj16bGmNfMwNnDgZ3gKKZD
hRnys+jzvAX3HyISrErWXhMKrhWMxXeTNFJCqNQ0LWAVHQYwyKnF5xVpyXSuGNSIrva+QXqOrZBG
3VNLirNVtMRiKLfwZeMaqvswkqBDAa53utlAAA==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
d0xXkKtsKM8GvXhDZr16p1+oE3uBtD04BJ76eGGIEj/CFECfHVy9qsJ43oSKjas0+AJr4GFFnVb6
X7gJV6MmX/OboC9ier5joUCGz0mxVzkRZK9a+LPEDcg0K6+cLE36kr+FfxW9Uk2816EHBCMCf5mK
A4eAhSmAb5Nq74F/q0quiG416npbny7faiQ+xmPDfYYiM3UuMKaD4iE8ODlz1w5xThPllWESf3LZ
NTkw6fozyTqZ47vvE21O3dgIGAY1v+C6BwlCK24VwPJa1xs9csY+qTk31j5jjAc1ExlB6QF7t9UH
lk70qdNPWxT87OH7kFT8UvPO1D6BTC3/WkDZfA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
LYhdzKTvo93uJrAaiP5OfCDuOnu2BSvPnxlv6I7h2n1+xHtj34LNNKzWEgOg9dUV9cYDaHYUjjEt
DKdWcz6mZ61d5qyxAhpv67fc90v7JVgtOAcT94/Yb+AuLxXFcGA6Gic7uoJtUgz6JmTnb22Dxdjc
KuIewDj4IOTfP8XGXKTaF+cNp0CFrQgTAcVSQFyLFxr0I/9h3S+GZLecA7ntEeHEOfCJzPvy0ddi
7MCdQWECLb+fXC0IAn8V95TumcpINiRAX1BHi9IGJ4QoMrb3jOCrPkFhDMTJj2aiImUWdi/l/0QE
d7wcXlgIEYVeoKYUOJ4mqy+zZPUbLNeOPADUDQ==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 19296)
`pragma protect data_block
R16RYtBnYfjwl35d78wHPXz/b/fk2iI8/gXy0XuS/p+uLOq4GGwD933u4abkIa5YLLHehRuik4uJ
Fk34qQ1Ao0I1Tfhh6lcQe9y0NvvBzsrLjQlwaw5qA/EaODBrfo1XRls+iI5M7Zr6LLOalKw1ZRlR
0aQ2Hfa+xaIP517BRiX4E5hkb6t4hlUf35zTOTQlzMbshWrYN9qK8zqeZF+3JOfhw4/K1fZoJUlo
5qx1OFry/bFU0qxW7AcOqAtAA9Y27rt4d/cdVexYI5bhaAbJOG+FaCDR1KWL/Ku9lTlx04MBplk0
DC8zFlr9FOJBkd6ew/qGDP7tqwkn2nD2ywBs2BHEJfCA3nKzTc01rLfJjs6VmJOkrrCCxRDMqhY6
Ey/mbArh348thAAToCeUqKdyjFtPcXckpn8JP8CIrdUEwVkUw/426ADaU/9N+1ezd2Yj0GZd+DYQ
r1HE6s9p3q6hq+KJbrHTYTUq62Q/Pjcjw4mbW0qIcsQB6BprR/uTh6zr27V3gtWIiGBV4NrecFet
yY3n1S8eoERrXpTrpJVjDazDRf7lWqD6rtF4N7W4g+unw55h8q3UxTyamfas4sMIe/ZWA8bjRVKP
EPsiJdbrVVeprHaNsUh/z35qWUljFbV+81DT2f37OEvjx4+64xVCjPei6ViCuv7HYa3QvhubTba2
LqHhcGp7hapKaZKwzld4fC50TEh/wjl4k3/Aug9V/00qYp6CWzFLmZSC12MJlxarlJEUk0k+VpTT
Y14+9xfKgnXL1zeuRBEitK2Nr8gfM0cIsID3GwCnw4tn0eKQZkxvl8lp/JvLKuFETbJvP0fp7U2y
aHKDy7mao8ime4pYCvT112udMU1++/rJr2TutaRSuKpZU6WtKbflTnYkblhMllYTxYW45tVBePce
jI3O9dvQwBe8Lq75uZhzHdzXZMMOoqFaJtqn8NOC9Jciht62jZdL08z3daufjI719am3u+NRRYNN
k5D8OQ3c8JO3l7KY1okDstNXcd5bs52kOAY4to4PWis1iOs7EO2XRiJbQvbX0CHkn2Bcd3n34cnp
YDH8VBD5nqyhJJe1MfYGeYCbDjpemganjvqTRgzrDd7MPmxCtBQBkbiyXzjh1JxuJEGgODNi1ck1
tT6URpUYtWZlSPiHVmPkT9BBgqM2GoPdyyJbtw6s5MH6mW4bZ1FpWlyaiz9Bkojz2cp2eaAWxeyL
EHDnRATqmIt6Wq1j6luPhZg7PwgEL1pttHNtFtoB1m2bN0KmbZGCXtRJXGyihuNgfOJOzkTKgfPo
yDzmRf0eSiWaofj7kJ5m5IZLOICDke/4S4zmuezjU+SYMZPPQG76ZDMLfT/Asd3Mj8WaihoSSHUs
V1+ZWOeVFSOQVdBBS1okyVXN3TwUVbRN70u+yZ3NLODLMitE60VMd0uroWyZK+AohmtOoj3CVWpN
JJqXzHPETl5zvFhuUk+MfWBBMv0XrVhDZ0oWJVW2Maj0AtO8vOg1p6nIsAy3X6My4bVK9g1q3qQD
xDG+ejuyg8YoDMC2Ey/Y0STipNJq5io4p/xjuDZSj8DWDB2k4iXK5u5bLBp4EEyTK9XxpwXJ3qYV
5ZJ/tKKXWVcfX4gF+SB/sSKtTzUZKUw+W7i/hPoO1X/SllFwN86lYTX4nq8X7Cfv+JIeO6nbBNu9
c84aG7i7VFW2n5A9HGzltc9hbhiPtDWh8PRpIETJSBvTfjBz3RzJGSssqFw8mDLukM/jjLQYL9Ur
NQRQLNL3Wsg7b766YPI5UflBv2qGJFeEt8BWuNzAjX+LyKr1sKJVQQjPlwQsuv4qyNqMT0g923zB
YMFEDjLu0fbfLNNxsXKi7l+oYaOzNu3JlXXDAk9VPBbnqhKlwxW8IYTj8Hz4Tujc1ua/L9W98DGj
tqvrUXKmbFFeuL0kMNx+P+WJgZl40qbCL18BqngIkEV5Nu0TvdU4OB44PYyYmbXdXpZ24UkxV5Zd
34pn4stmQvP3vcSJxpQ4PGROfrbQoZj2HC+0VzSJ6s4HnmVwYwapQFywp/tp6v6sfnUtzS8F/+El
LdL9MVqwCR3Uz0BBfVl6MlEc5DPUPgd+fYQSxFjlFqQ71k1NcIbQInH6Lt8nSJeZg46d2MVjcrwz
8JmYBE8OKwkn+iqC3v+WzWcQwHELL/kbDtRDRG7czzdSQ0xS8WuNO4wcbJGiWlW+dF5a3PYrSifj
o8MHiH7CYOua+4HSdUtKjR3zoY/1cmP7zuJc4v/0Hb7ZGJ5FQtuOCMGTMMGr5MQMOku94uFIfz3x
u2waf2KbW4oodn+bN5jXTqvR0AR6bsfoFdqZTIavVM01H7IHLHOdeTGDEI7+O9iURFLZmytoKmt5
vGaMEHuHWzzzDLZ8wzkzLv9vUGRmZCNY2tNdYPZGBAQMssmxCu1el0+g+py3LF1zvWtc4/vWFiSA
+zbpTZ/W5iL6hKtpqGwj/6qjqPAQAJSkSl/R19RRC/NmX3ewhrkUKnAkU1wYqCOKdXEEioDwDIJx
PmEjMxTXIsG1gzvdu9cA0mTZpTI6F/g5PxVyb96y4HZlbXWtd+CnkhQK8fGvT8GdT4inDeZ+qiGL
4cxaQZFt1D8wZCROJD7yXyqPSo+M+Pa4KfKid5CwB9OT+226P8c7hUYOq9Pvo/XfoQyrxegNqGe0
A0VIpNbn2gQKbaA6+2kYAj3qxMqmz8NONQh8OKQy7fgzHvihGLY6+uZD3OdVBypIx9k4tFcuSqyI
4BMWSLMQA78IlntewEZ216Anz2t/7EVLZEO8QQR+w3qybEsuPnjJO4o4xhSfW2rwszBWk5AHuZZX
fvSR3pu0W3OgW6gj1mv0FH0IzLWZgdDhc03gEH3l8L+TOQeMbcoSdsr1ntBmRdhox+z4DvZDgLso
OXLT7Cz89ayZsDzlAs07RsGifFikGg+dBNZ6301h5OgiLwLUyE9mojBicHsvPBoALBeRJ1kYzRd4
sWoG5TKPANyRQiV3hWwND/SokfOBDWlglTd927Aa2A1FVbArYDOsv1hJODWpSzVMFPtFSUIB0TMo
EfXFY3A+F2kVjlpFMYyVQFFCBenI/Lh/qyeNlSYj9Hqko0Xe10tKUYqrKLiJZ/mj1FVFkQC5N++O
fNEhAjeU40QbMlwi+7j33WwGhyEnRehT4BVdWb+4B604QNjSYerBkg64hB8XZqtiOh95RSn8B0eh
Y4C2vijLDdpn8R4EyUydnmaThXWYvG3EkGayvYNtNEUkIve5N0KvgbsDRS/qqFOnExRl+eIxbGcP
P8kmmQp+bYChDCerBJMq+sPlahD4lPWA8YOrEB1fRGDRv/9IeMHsnJzGZuLeQm6/0zBdQ7LRkFki
4LmKpPJfJTfx9Mh1grwqlbWBtWEM5QEtDgBrGKbHlS+ZyEmT42mmdXgOYQe/ToO01yCiLccXjvqM
YxDZJhvfoEXgOdLUKW/96cPNCI3XG9kbxgoj3MrgW2bdRTzHpYPFpQRpfnKIQE0idpo8ComdXmee
envJj74oUK8KjuQ/Bu3E/Q9YYoOFBTqtbn3zy3LW7Je8HC3D9OE59vkaeav1u33nfoL9QJe2RU86
jPTV4+ktvsaJQlbCv6IS48yIkdMl7FIeWncWVvMhQX4EhXq2ilWhq2JBMAgufgohRC2hPxWN/hQp
m5OSSn8fofsdkE5r31frqx/jrF8BfifkYyfooe6u23psIf9aiUpPic+BzmwfwhJyGEGHEEH/UbOF
jnB9pIABcdwJmk6U2g1Maffxf8BwJaihYkWj1fCKzg1lh3y9g4aRAzlB8SlMG/mRRYnF1LyUaQWl
Tz/zYRGO3wsNkz5diIxs7bSElxBzAJ1SomDI5rs+HGwKM9VWlqEn6dnmevpJnLzHmsf1RoFN5Hcf
ERUANlnJS3MjFoX90mqYGsrv4r+srtrLk1+jx+me7ruMTtZQKoe1KeY3sXG7CfMpY1vwmMDChrk+
D8hMoczyCFJ/K1ChzPKF+b4CRwu62d7WGgpeSlySzCEdYWXaoGE9WTJg3rgB2rMQRNDRIlyRF1a7
Jbdd3JQ8LJFqvWDkUJT1v85/WbSrnj/AXZ7cjDnr87LY1QP1KE05DczlzHWhICnoiKUG9cW4FujC
eSKpbwdBQVIGxXsxQjv37utkosWDDjQ2NT6zIHpJSLBqEEhXvD7aX0mTDz1PzCcqn5pI/0ayDcyc
ly9YGCpE42xlWes6rwuAp6QmxEu2Gd+u5ACdskSA9VbX4gegbfk8GK3atIJcgOOglQrMkt9nYRqs
XYw7d3kwlwyBbdjL9GobHXykALpCBj7hAdJxykr6q7sD42yxqpHIyJZl6x7bYqPykv4eu2aqmD3P
dYO1Ss7IxqUXuQDC/q5iPSc4EbM2LzY2oQCOg/ejDnhoalaDI7Gucwrjb3ei8nuCnTjQTWQTfdoZ
eZdqF8+xSkPoaJI3pFPUFkPxssD/3S06EHrtk4zO3XQLX+zmuo5Dfmmqb8ccuiSaPtzGX937Z8UO
hMwC+ILy92S1hvPnYKS0bdsKi1fIqU2i6/A6W8gcw40DCm/FBeHUtRgg+cyQzsSRQhNNTunUHi3P
6nsS9QPy5sFCEbH7N4NBvCMTnnTkfEbsuwIkm+S/FrX1SldexnBj3pIe7U8W2LJP5rTpxH/2JjiI
rXWaRh23iZYziwCpBScC3JqnbhKj1uWkGLv1oqlqLpfb7aELFHTVuQtGConT7+CEJD70befiub90
QCrjSLwBz1fk/A1Mx3wa/0WXzFd9NhShiK1B3ykUJ5ThXF+BN2fW06vT1Dzdut9rtZ3gy33Vi4hx
bKC2xaEpgoLkXOM/hKOAaI2A2MxTkj9eHxyBdkB17658VhLlQOBuMaIemSI4OPK9CQZk1kd7YSS+
PhDQ6HzvgVOPodY00i1PkrxKykx5BPOiGCcPUrRKdlZCFzaWNjMO7FrtI76+HK7RSQpSk3/D7HAo
xs7BsZ4r1rwAsSx6T4SxzgCh6iEBBj4Z5+VdYU9t9YYS0wnts6HsCspQNud4cnq+H/d0eb/XBDC/
QxM2pCFSrmLMOgIF3CpUTvrjF0LopQcC2M6tnUYC3bwF7LzlFGQFhSkw0YTWgED144BSw2+WTPmQ
/lwsOqbG1aD+YRqMt2i3j2T1EH9ClQK8A/rjBR5pfexZMNB2angA6rFwD2cI09Mf/9XKvWjsXK66
qn0p5ITveJ2kqjlTRnj6hv3jxF5X98CxoJaVpm+UHe2Fg+athSVkskBI3jYr9SsIFeOIqXzzzp9z
tmS+Gllsal+uFodcBsvpQ+yCfKnb2xnjz733495ASC6gxXcPWmqWgHLCWzy8W43nugfzO9BAoI5W
IYTuliFqEUFSrR3Su/qAt6EPjTihy4hqFBofTsZmCI6ErY+gHqEuIawuw6cLn21x43tqq4+vExzN
hZLeczoQ5L7yMuc1Twspyfq+zrntCpFQEwzyrJ/u5D6wHeO5Ld7qZQvv2bDl7X2xYaygWjxo25tA
tsjSt4BPNO2KpUztOuSBQJIC176noew12wqU4uNerjt/JekIqkUL9BcKfGuS4t8PE7Xj59kd9Oq1
uF5FgpZhvYjmiovaZ6fYJTNeDBxQCBZYp1+fs1NRVgsNb66zhkeipnKA8t6lw9iZywey2+yPJk0M
8nu0J/WhQ07TTH32MFgDhWqthDvTjlcTgXmtSsyLGX4dEQdLDX8RZxXQYY6atDRhVQH5PcQQEz/U
ziAYCPlOdv1OG9HMjN5K0DZVYNtsYj34S5Fmly3ZmLGVrJlF7PHBQVjDfCNpYWHsMcJMvMPY4sWn
GIXdZqRsKxkST2/vtadldhR8iD7RAeE9Aarm6HQzuIRB+ahtIAqz1Ul7ZXsZam78GK8K8WR0tMi7
IW2jIPYfqrUxShdoY9TYii/jUWBRjKOa46fNsLmDTWhvzTdqNlffHOutDaqpPanOkUhK9p8IbYyL
lHifXugbhAKHOqNrpzL2JwXX97c/P0TZFMB8ELns6NVpwSzfuZtTjgeUOCHESRA18Jm9WxEctuWh
AroQr0eRReGM5f85mCEFBV6tAzHzRn36QAZaRwl1gaEnvGbe8+tJJt7h47DUdp1ELzStUPfE5/TP
J+8Y2W5KftOCUJT6YlNdNzCkA2wU7ThE0ByN0hhIeuupQXEDsnaU8cxyx4KmxCyGZat1Cb/L85X5
6Vque57uStVBo2x9JiIwBqQElscEExE1htZYwJHYu+4ew5wV748WGxhFmLdFr9VaB1hJGYS9ACre
uKqg7O1dhOL/aqmuCJG2XGiJYytipgScNHewZUk3c8M4ZJSrGDePkN30dS1xN7Dv68cNwgPyXMk/
79wtRpRGUn4PXKAtQBZ62u/6hPDyx/2MrCvNYMDYGEWc7UdqojgUXv8199mDeQOmQlY5tmiBnc3q
kWHriG/KNvUftSH5zvQXJ8tES+uba7fUN744s/7w/w8/kJknq3IWMkREhpJO9/rXrHH8pEjNv8ao
JepZV+PEFotlPR9Hv1zmJyVHjri6KjgxIFFBIWq6XS/Ag5yRglPvz6pzPAC0pQ5FXimqxQbqIJDr
5jB4ux6hsuDpldRHmLpkN9zA57Tz+Acn7JogQfOpEAHfYJSznVME2Za6WXX29ot7Rs9boRlglJJR
DbLH3dX5Offj3XJUC/yuYTC8VpPBdhqqCqjhh2bMq0lqngj2CQNvRfGPIMTK6F0abaJPp9FCddai
UnSLKHowP1xgaAJ93e+gT+1Qtoob3EUibu2c2PmJKaCsnjqGEjnxg/6KzALsruyszb9BynNQCcqb
JU/CAGqbV67foBRgt9x8vFkmVGu05L4tXbNm1koN4nKVfF+PjvMA/GfunAoK0T3WU8Jkff2FK7VI
BZRhMN2wt7iIzifozPpluAzubEFQCEN6VXJ75vAyHInvEYbG2JV8gRdWfZOnICuSez86uMyB9TTD
1TngeX8b9YoNggQt9XYBk9YprIbCUsge0IlWFUI9IVsk6VVj8GmlS51/eTIdSB9Qc3VIIIBI243n
TZZf2rOo4XelOq0noXTSlTCOc5AZc2RgRo54V3uxkslv4hrbBnSpYAYOE0xdw9Tb18XW+15xvFQR
C6sH/HWfG84fE3ChBqjzpLATR1goEQkH6giv6Cflt/w2T/M25epZu2zZEkPqb4jitD3ED4kitQKS
JGXHatoHKJs6XyR7pv0vPMWr4+t1reJOQBXcr3WuZuAxzJ/FU0VUEj97SxdFowTYJTyTKOjKkWGl
efMWYmWRTI6pKyROSyiZFFryG4+ZonRyk82ZQl5a5ya4W7KVI1HavrrPN3OgXGcBheyhSWmrLZaq
+2Ca6/Bs1QvAdEG7mHojg0Rhl3KmHUC839xImTkLXNK1qDWgPqcwcx0cojtE9AjszL656XEW6b7s
iEcVg02ABZHDeZEAuWV/W2NcXYOugMCBAsq+aVDCUGBC2yZvHy5tb6Iq+kHAWfUK8hc3GbOXBNKd
DSWzGSTnXG9p1tiLHkIlUDLC7o4jkfpcyeUdU6vZgdlHF6GJC7TwM1+XN1sDHqR7jYvqA8go99XG
+B1NI5cDL6+UiSrF6Yu8uY7Ri7mRvqsX2mFsHy5Sc+p55mZSE0rTnIWPSZtTqs+xZR2sCotw+rVl
UvYS3mVjYWj+1vLdCkntr0ZjF6QSUcXZ1yKwhOPsUqjsPHGEuem90JltUVmL/3cGqiWKGBXfhNau
qzEnhikecB9OLmUEvgD3sAdcK8OBEGQqH5vu+KucjUSGz/h8IFVerWUP4TI1RRHNFxkPAJWhWppJ
Gts6iMdYAIgEeKW5invCvx+R+uoXnn81yVdiVjXBYNT+7O6zvWmghQVYQwDPlK98n//Y16VEUKYy
Ff4d9Hcj7DTcCMoyVB+uWU2JV2l4wHSPyN+F0foRgPWRJyjSxqD5+Pb2PRTRJxtlbfV/XyJR87kc
9hO8ymgerYIuZf3N67dnEgFtUVh54HrQqPU8a7vODq1GI4gK6rsxKmIU4QR9wFxyhnzygq8fNGvn
klvcow/VXhxXgEdlJk6DmOPXtdiBiWWfXk8oS7Z+xoZ60sbAmRMaZpZddeFsxCFt8BUv7o23wylt
yCvjEss3obETGin9vY7PoYKEsBKXuRYOkv8S4EK43RUqzqLExqTYb29S7LyRjvHlJFPYP/MiJPlP
GNaHIn2/GkRAogJEAsYZhTGSdRhnQEMGkdZyTdowULLf/CYO//T4rx7zFUZLJs3Z34f+W0UvHrkk
wXMvXdgE8nyCZEsV6pl8kzTUQYNEa/eGKYgd0pyAsSnyuEWFccsb4X+Lb2AzBClW/6sgKuIKs9IP
e3VOgjzM7C7SzrysdFvcrOfAoLWXdVVW1nRWh1vTHIOzQaHnDfzWj8gx/sYduD3GGW20DEWSTXjW
MWq3BzIZa9Tw0ncWx50FLn9th2qWbZrnTkQ2uKOSzeUrmbf4iNttF0hHoFU+7bmU6ZQp2vKNK8He
O0Jp3RF4ZY2HNRTg/FFmIkGQRLfF2ZPeNfzAK2umksvgxA0eM3MbxZYyEobXt0bwj0e4L3hMSzwR
vHZX3IQrPjYVeRIUA52yBMnVuWvLx+7/2l8VVKsmeLTwY4q7h5suvhnxrWwU6Lye36uZTKJqto1Z
//t5CIZiZE8XHiS5O+0DpZb+GkoY+UsZaQO5070yYFjCd8Ty1Qzq2bh0TyUYj7MC5kywEMtaVoUP
57FSRtd3AUKGwlrVEetb3U1ZHbzKDgIgwMV8TFs5f3uAw23b9MMbj74BbiEyCgITfQUEsezfLQMB
j6hBg1DNfALGjb6R2+2fczX2otvT1Pgd02vDMOEcHE2xLUQEEj0Fwooh01LbY1hDRKVyxBgYUNqN
vFAZkwC9BNkLCsyeIT15BEc0oBc+thl65XTz29ZXJHinQgZf3Z3y7elrJ7Hb/0WejvNqwlh012Wr
7ishiW5oZd8lbAk1Gh8/8q0OZEvtsh1fA84EB+xHCPbuvvvbA1XtUbWSs8JBUVXeBH65FGFh4SeN
tr36YjipCNSuJQIv25GpxXg6c2zlqhXfRCVizOdlvmNklcEYCxvNgG3vAJGKLuqZIAkAXLooHAlK
+j1/79mEtOQhkPGZ8By/pm29upFGUAQy/m0dcK0awR858sSdrcfzG2CzF4ShZ2woLB+CPH4jFCNJ
/oRF9b22GAYMn84046nh/dgWLOVUu0VoCxyWKFrdal0es/NzZw7f6qI9Xo9JWenitKov+KW7quP7
EIIN75EMDrbFrqyOh1yY1o2VLcU2zIplMJbpkxfjpvjZ942vih3wMMncwDxyonHHrfGmKUBNzfTt
29cFBsKjXFty6uXWycB2jxyziuadNdEzFuWClmN1gq6uqcxuk6oWOM3IquiBomeJ9pCi0E0vjAe1
g5BB5PKEapEhZqcL1nR4LGYFmBjcxpsb37Q8HKRBgfrHa3JpiDiiC80FB5Mc0LsPzNYF/n2pzpeF
NfEis3bQ5+L7lIli1huXWDJdz4Obq2jTjpxiMVEZwyS/oYVbszE1uPLwdNmaWcFfzv+OMv5v/qTi
Z7A+whS76uk4bGzW2Bj0+Uy3L1IhKnFYdqAaEFsUDtHA7oS5Reh1CHcmimE+uyiFy1sS20Mm3vtU
U14X4V/aGzraJC9GxmcL/NBUbcDIJI+721BNTQ/3qkPEHsEv9/MltzaULV/XgPQjGN5/gVeO+Nr4
1UFvtPxGbdUPVhxN8/9Vm7kcT1tJxvKFC6ArGrrYvKWkyL/KQXaN5bEaWa0UqrmYejdKLSd9X4wW
Bk5utFHxoQJdX3N07uuQyJoRYm1ChO+laYD8445yY7HwTDaQcF6D8DGPiuPHx1nvKdCwidHqbIBf
IKS3S3fE6LTe1g/N2eEqbevUc+ytmi6aYMNI8AUZ/9cNH52eCMSZHwwlCYDIw8chgBhfAee7/ijg
KXeWkXZscKNPRuQmwAgBAXtsopkCtC1n8iJ4cvbMRY5LaM5JxnoM8nVExj23bua9Wp8z4o2bBQeh
mcDQs8L6DLtKPN0X0jaJs5eA5WY8X0p4TkurLW4CJCr2gCk6ikDyQM7lkbDZghePq9ojluLQQjGG
GZhZcspFUwYkFJY4zsGNYaIQqYdSguYrs3DWJ9uUMWnHZyUgeW4C06HFpBfeWa0AfMmTBCdaHkn7
EueaWJOJXtAel+qpOI3EUzG9SYij68eE5d2L4psB/bSa04bntCQSwYXypkVMw8H2JJZnkWva7qf/
4I+J56iee6l0QoWoyv2Z0E/BOwOTVafIKlVK9E2aFk1q43hwkTu7t8Vk4AQKal5KQoLefrJaG1rX
W1gCb5abzOAbjWLuSYVhEc7Ck5OYvyYl7VSmvn1Y5MSGqCSV5v2hCMjEu1koRSZTElNDZxacwSam
GeN6IAJk56UlaNNlkzvgJRcMImOBhP7+dGPyeL5aLMg/23247amyyBSXdp9mtpUv+BgLRal+wYiw
HNsffgCJpShaJ4YjSWV0WxAaWNpmAun3uxSCG1h9xXOY0IpY9mKj7bpSSAmwyZ5tHo5nisTkm0M7
2epV/QrGvjFXCMW4dWHjWWrXC4V9nwSAypGqvT58TZRttPm/FDYTC71ti+Arwnb4oPXYpSQEX4lM
a8we0sdpxYL0r694uIx896DCtk4uvT0VFu2BDTUfG2rTgwO2AE39TBYd6F3jAQb5Fw3OOfD5+Apt
hXcS03tsfUeKzjZFZXqp7hiMzlNPxUlBu+GGIJjS+IUxR29jPO4f7EjasNEh/a8z6XPe84uPPuOO
PJCmtw6saUbL/XMES0ICXG/cofv/Qnh/Vl4KzpIL/+1lRUbGV5qxLf6t/RQSGx7BYhp7Fbb7VcHf
SXab9asFPcvVmFNM0vXL62AlOKV+lKJeLsEPMcPUu/2EXs9++g5eov65bt9fM5z55BmQlQ7nA1dY
lgfYGVl7rrZzMSki+4FIulLLaCDcY4xMR3/5G+SoST/Z8Pq8VnLE9lohW4EGjc6rSi4UMRHJNt4V
6U3DbdaUJzTv7Y5ef4f/umoLlWC8TWjdwRoc/OzLoD56KXmk44Z4kv+2eIfx/Ebq/tf5tjLjFh5H
nDjGZfElnkDItgCkeoJoEsjVXixQdX4XYJ7drJyO5obXUcd/G+Act4eEZNh1DwRjnQ9C1qQs6dDl
A+lw5MtBOBU25PAtyRR3FxpLKIFiEiVlsgj///nvFhmrahy6qwKRMg2qkQwUWpyCbsyPd2oExZvu
z2SEgnXLjFpToVQTRqAITqDJRyfKMMmvXzMNMvrytLv1daOf54HbTHEmLR+cE1RPTQuVNz1BlWeU
kGP4ic5W6YW/iaYjGbzpPOpVGSAV+SZRzrrFaeZ1n6AmH8r0O+ijoNrYt+vd1r34kHqyKMzFAf0F
HpUpxBGmag2CopC7XKp0g5Qocmo8Jow28yTJr6NlJFHUGH9QEP9ctbollKij+9ho9OBBa0j2pxQi
1ccnqtqcx8nhbuHMkc0M2T82rn9kOE8wgJsDc7y4pZl3MYncuoguftIOEbBcXxq8BeZWzi6xlFPY
62aTVZqKF78I12RXutGMO/Z3jsh/FqbODCMPx2a6dpwmcaiDlUr4NVOR+OdoIF3S3yEifk7t14B2
F9BAAQhpfAChFoBFnf9g2XlQrlD+rlqcJyQjTMllZQmjeg72oATup+jBavka5SZLiHUFPzpvu8n+
vq3Q0uUMsInmyflTyoCBVxHod038O8yiuDAhaSXBayNQuoK9E6Lld2SsUE6EyTuHnbxXfxMytFJE
rTsg8gLnVX7OCPQCf+Ln5DTIgdH9aY8e1OK/fAi67H6VFn3ppAohMnvL/DmSt2MhSPCOyWl6fVzy
HdH8gQOCLBoaOZhTK57oZNiAAtt1qObSKktuPfAGbHbrUigW3n8z4bEvkLx2VHLo0QscQ1WliKHW
OAW7fY/tfgiu6Gt5Zfe2Z654AmYxcQL9GOFaTDVpOV5LShBFPeRYqBekza5wt113egd5brRPbITB
wRQ/d9pP5xGr85jTlnlJSouHdqr5X2p4jPJU8/GPFeeSwlc/9PweXzPNwcY7Z56ovNQXRxcL7PTI
vMUUISaQ0j11GG5hm0I/haCV24K0nF+67m9Jvd8Hwu+dOWbz+z4h5OWlVVgRP6dx9RV3sfNJjywU
dkXk+gFTAwFZzEyY+yQWiCvhWsgyYbhIL/g2CEiyAYtqTeDIpGAy3aX/MehTwCnuP7dIq5/7tfb+
wkIWWztkvkyiOiyozqYJ2/YHSupeinibILjvjuWUnFPfsW3XhhN96664b0jMNbb3wy/SPD9oeqop
lEcIBerN76gNkWpSlujVCJu0lAiMayuPzUuPj+OCDjbhbVX3l3TBaSFGC51PH+VQKbUR7zvsQfnU
eY8S8+jSUbD4tNDbSSUFb8GzK/ls24dICq9vHWs9xwyF+fxXjGOkLxgtjdPy8r9t/gERlAWjVsNK
qmgrjXJ7oytCl9/6LNCSX/yBFIslLIRq4/wg98PgRTxK2zdhKAz5mEjEJ8tJEYroKrVvfEFUS0/L
tjiwzdnptN3QF1yJyANE9duo/W4w5yafcKcVrRsjHlTAs//n1CZeNHvyVp3E7DVFWJPZq3AbhOwV
VjmMdk7BFyiBpUP5825dZL6r6YeJaX/d7iKArrIHXNM1XreQ+FPgFq2BAXRp3C5hb35V9gUej8wc
iPadOK/1YYIh1okbD6RDrrS3MMa4zeSIsW3IM3suPnzSIlilDq1Ut3bmpzxf3b8/jKvRIQ+XrKI7
nTSzez4vO780uyQneGZZvvA+kgWYFfa9os+9NvCXM6fbsum7MnDSeQ2ICXGUIn4YHYNUKkYBMFJE
QfPUtvEzNI/e4rVapxtFcklSlE6pFdWUVKdnjqGgXrHsofGfdV96tlH+QQyBu2oQ7c8sE46AKAzu
FFLx2zCT6NIH/buXNJ3anFBbx1Wq2ZZ9sUkoEpIcJWFM5Bhkpb8hI2iyGSB/XzkS1oaKMQQyJZDo
xmSv5/KWVRV/89t42zWvWWkD/yy7rGVDSahxpmyfBoL7GUrvUt52j/H4Qc9qZfu+B0GASeaGdszn
1aY8dBJaL5mLK2p0FzTqPddykkXFzN+AEfDK4QVJcs5W0rsZMAKIgNYkSAK7Ku6KC8yy96EDylpq
BY17kehlQbSfuzU7enEczGBaDjlsOvec26zJaP0joShvqpIKteLaONhcQul7cY0TrRe4RsHcYlp8
UxzeG2kJ81EfE3HmWeelaUK7z69eeowcq3yYcDcXZnZ4UoXw4tDandpxNjaxPh449r+FnupZWfoy
8MuAvqTcLGhAo5ePwmcxJlO6TK+27JnilwvEpEyuTsdnamxPv3FrRgp2R8e3BwxUN58CWFQ9PVEx
/FvU/YvGgSRq6tLRmY0UZNYSYmeYrVM5eLOX/HaOXR0WXyM639BnNZyYmcLZxz7hvczHUS/rJ8Ul
1nEOXyXQzbb9XTZ7nA2B4xVZSPtZNn6xfe/MyYFFKCrhAcBpWDIW2T37OZzU0YN9o0/hDs8Xu/Lf
2TwjI62TrQJYMpfLtz5gi7ypaUW3PA+wyx/gPHsoZOp0aKMowwCU6vRQ13iH4/dL0awge3cmindQ
Q7EbxeUMOwJ5Dw0FbHXOkdGpzcOJRDfUtthINVOH3anIx8xAwveMwbcg/Ly0EusqwJ3nHOv+fPOw
k+Uf6xUPV2zML//p3uypph1VgR0Khrg2Pk7O4zmpughLAIIb/avPracYF1uS31bH5OPxYS9ahFzB
W0lJfIaV7jBdExq3KySPd/epVT7x3u8wtTB3bwYz0lebtH6ITwVVM2DppKGBKLB1OoJkpC7LHtgg
bFLT2kVUnj1MKnregsQLz4ZWABdJRi1D63pIG+0iaPir51P48KX00NCIXKRHkVYIS/ZgK0/Wzz3A
Beq7jxmABLe7wZ2QoPyJpU4FXlwHVVI3/QeQ36oVXw0CkYxAzvVr9csyNPE7jTVClxDBAEkPMeFy
y4EyWEjtZNb43gG0w9V6ar8/gUSudlq987QyJC0YmXaSADIr+a7HctJPFBpB44jLSgtOkPpyQGv/
d1gAAuH5mWGOlVbjIRuOwnL3SGxr70J05RkL9idXSg+Qsqkqbtyooivf2cNhh9whG1y6wiSvOrdQ
VSwYZ9b+9uspJrw3z4RfkB/Pp4wa3dstbem/LHBOAHSs+2lfzf36lVfev2wtU3i2+pBULzPKClH0
tYsz0hKgQMPeZKER+1+a2RfU0bdzDW7d09ZKrfOnH3SY9HC8uu9zquhjwOR/uug+VH52wYBW/aff
54s/6zxjRFP8c/+rdBBm8UPQtSfiSPongOwkeLFBYE4gF+To0QZq55BR3wlhujD+PdabXxfqwX7+
dQf+HVOCu1o/bFQUlzk6c44eH5zfXGK2mUymWIusmOPapCIFQxKodr8z00SDvCulB7dc948Xw0ts
zEHb5C3ZMgpACVyQC1WFQ3ZfiZU+JonD5LFGyZCl3qVRlZ/jCvMn8mL4C9S9mY6Sq7le0SDNub/I
72fQlVT7EgygfkLlhbWebsUwENVxIFD9g9yt3Zr/+J0+7k8dpoKReeSeXfFrv13a1TgVSbVw48Zd
h4Nnp/x2w6/UHZIfcZURTNJcBanUpMow5bnka9gwGeXQXoAAOcMcBeh7pW0c2MLt9Hx6k5RHkRcd
/tDfrO0mI4eC5vk61sEL/GmebeWcqJXjvP21TocG4ByfDXAapjSH5tacotYOMeYV4EF1trA5jf2J
ppZbp9xiqpB8QuGRcl0wNxHtpl+Bsnc+fJLJ0qcACI4reB44dxJTijXuktMV62wFh6vA7LbzN13P
DMLcWhEmZMiSmhjuy8Uafe7kh5DifTF/jT/EJi1CIfuyxrKyYp+kPl5uQggfH9iR7VsSD4KKK0mS
XVETzACb7CH0IX0/kUgbcYtjPK901dmExGWfq1ACTfBH1OEpwDXeAN8dKppax9PjbC7Yz2sXN3f8
v3VVXpizkVmFP9ezQu2D0oz4nDqLGcR/2fuTJxTVHLdBDiSabH3mxfPz7QFfMTDNnjvTJdjvZPST
UfmgaLIEexL9bOzRsnrWrOCFXysQI9cfBLV/ANzzD1xWuo4xJPXmfq9OduluKb9G/a9zBWT2yYpA
sMNIRZ8NOGL46YktRruQnm7TCMqv8x9czWoBRHrjJO9yP481StDDCpDYQLUL+N68He/UXmBT0xGh
kr1/ojp4vWeYGpu0Lhacyz1Dv3f5qnDLiuzTEMkq1lvXXOSdR+RGtDn5da/ieo3Wn3JqQ5szlZ2I
81muRuZB40bP6hJ3Vk3/psMGeb7B+hgwqnwQA68dPRPQHUU34ETLQvTmSfyV8R0ci20/E/xyGb+D
lmQ4Ed2TA1Cwc0LPF2OEHDLPYGxxLRnyF+Td7bBlkUxQf35E9VlsWp8+goKejGrvDOnrvD3ZGjNF
odijOh/RP0Xu2UZA0tofl+uDt3LoHXJMqijOMzdux6Z4tulhO+06ZeX1IN+yEPLw6BU70IKZmAA3
R0XRdqZJsbrr1IqpyTdZb10ugOajgelpqqsO2BzUMgONFVk6uqWeNBgEwITmtAulYOfO51SHHhKx
skPF5A52Pfd9qSBaTtddbgl3A/oj47s2jgzf/T+q+qwooIctAMWKXb6eCLdcakJbveO3Pf1EpHhl
5eS/tESU082CBENju6anRbh1o8eWSkzJJ6FrA17jp3A72J9J8NMKCDVVo0rbImY20M5ykL2n1xps
qSkl1ru4NTAG21QJdoiIZ9wgEK8eqWGxewFSBdpDIfHNhy+LJ9+iTTzBM+zfb/GCDPTCzvRelY+M
+k1e9/pZElF7hpAUs3VyFsXCYxnl9cufFoo7KJkOHXdEp84Cs/BLPlESGDEchFmHsaDh3nS1mtyL
wUlAo0P7syO2QlMHMXw5QWJJnx1Trukzhowgx9mJqHDiyqLhNYwfFXs8siwiycnnOnQl6gT4U2aH
0M6ZfY7uGLKw+BCvF/99r+siOwoko1vC1YY4pTqtZQufGaTXWH2ZHuwGVr6KtmuT7gCS2sBZxBaI
vzKPc2j5WzogmzavTk5Y2FoLZTovYgH3YG4jmPg8v1cTOoCaJhuHWfyP3dA3OowEP99n5qeeMogf
PGb9wxc8EwZeQViYS8gM6i0w9ttYrmT1i2W8hDd8CaQ/h3XyosBDMrUJ29ZBqhKkqz1gLBdyUAWe
TNx3htXmu6MqN4aLlk/KCVxVyZ56ZfzOjpfp89A9k68LpCFUCoFgggSh6CdPeV/ic28WvQJaSSjj
HQCkBJwGePIY5tq7ViaAQOOZ65UXvBKsJFBrTMEp1Ww6AFB4i8KWjAIFz7r5QBUwtEt8fHh+ovLI
ph0U0JIt/F0MDTfYMAq19fSbdn2RhTfI5UVJc2oaFdnfY/NDBZgK6BLizvtdDMjoyTfyOiTHIqnQ
BHodMHLaXEENHlTdIEKrl6HRieVTCiiEmq4rysBcYryVAfVkkX5Ai8+ktEURYIRAQycKcnJJpRiP
gud6M6vn0p5yltIbTxXVZLv0ckU4WIeyDNlzohD+/fRny8GnphhMlZltmslrDAozQdQXSrrxuw+9
kKv2wFWjcgDIkQ4kx9dg2jsPl6CNp99AbFHeeYlC6JxD4jXLSr4NheOiZQTTLnRNRaX2jZD3llYC
YcELQvRVp7eJyMAvvPsrDAD1GixAPw2RcxbXpo+/yoctE6Vc9/QejAOy9ztdK8PBWbEFXxJhB/EC
S9JQx84IxpQ795zw3EKM61dKly91zOvBEwFowChYEYpESih/cqCYArqWTZGnWkFI/ENNrmY36JGX
fQE+4RTea7rQbi3Cenivpx5yM4Clkkm76/138giJHwY9Tp3pT5v/OHhT841nWVgTvx9UArVEpn4k
HGMdD4cwrMxdszQM8o6rbn7SreBkfmWv4GRm1w43gTEogQEn4NU0fug1rbfQBbPR5SiR1q+PfH5Q
ZHvSYlcan1HvwV3gTJEM8Jnrmrdb5paLXbjxHYiuZsg25ahYO9g58jT4LMETfJg/JZ4FVurQ97RP
Y8JM3i4rs7iIb4voOewiMoXRmsiOxtUQesE6/x0krHTGdxtT8DLYBT8Pp7z3MsV2nuCCSNb/FZMb
OCEvliG8Is5QxZ3yJoU0faJQk7wEq3nV++81Tmw6xRc+KYFrHsoAsMdWy+YkQICfOPjvD83xElEG
oBSXaJp97tPOrTNXT4wZNb+tS5LIEvsSQypkkaCmlQvpyj76rd3FnZa+rRMzDsFQTut+D1BpSpt1
3BVgeAEGDeHTI1T9BGYFErfcSIaXMcwfO1uAiaFzKfsfv0+EG3bSsKD3PsouZMAYx7wGrJn078bB
OFpbeTmXKYBvsJrgTz0jfIq81CSuhTBIgFiQa1gAFbBHgFmrvHJdQref9/HZSo0YXSdgEsRWIfvg
ehdAfjn4uWoNxBch2PAqMdjtW5WQDTRaVH0krY1o404gtPZa2o2TSbut/jO6erezy5NqZULGe3VE
wRgLpm9rVySZF5Ku/JSesCa6mnh5EVgfBieQS3oiNPkfouu+cR2F8N7LX6HGuIAfDqGSO+LlsvFQ
jhNPkqQ0aMnKbxvZ1fIHbACXyLJcsNShxyzA2g8+u6givblywnyrISfZEwl1K7R7XRvxs2p1lOys
LKgqhTdVQ7MrOA7iRXVUSaNXy+SR8m+XoOp4wMGrTu6KxmCWQaFuVmIBD0OtRt8mg2n/3KSstMLl
qFo79oNFSf23GnWAF3sBmR5d1vNVXDxjj2B4esKAliDW6PB+J33VXa6sMcqZw/INSPqbR+a48ZMC
5SAJ1w62gUsUti0cF8PHcoTMudgwdwH1E5p3Bv7r4spQ101S34jQThlhUGdhYR0V/cLp/XaVzF/g
RLPyx4u+wKiZGIprO8IhuYqKkhpSrlWtvIsxNV6AKbya+CYs5W9gbFqZnsuKvPUczPEV+SL3P68u
w8daK6qfxJoFbIi0e+4YrjrmHdeRvbztshq/AsN/IE6iLPU1kCqbFXH25BfiTBEoIIAHgqfDZy1a
AJX224H4O4E34Kw8WrOmU8pLdok+m8XPAx8ntRAPWiUwT4M9F8JBWjI4o8TsKH8Zl4/RoN6o51Jk
nsAjOtykSst5kWwPpZMnbOwrHYZjmviLLnTOeFLuWfVQctS3eSTGQafMpP3aGKMgIhvWdEzqJC7S
XTi5Q2akP9ObINUf+RfZi7SqwnW7lL8JVjUQFffL64d54ZYlcztMxWfVL8IRXLnl+tWlEgc++i+8
Zrd32OaiAH3wlqCpCNnRrH4ZUsPqX1Sed70848WY1aKpqF+H58GdsnnWfZscalaU7Fy4zVDieSCu
PHVsG+9gft3Os04KM0ZaNleG14MJQken2yfd6e4Z3kFg8KAyDKo+D9ftJPz2hKFtW3nHGjItbLYl
t9TdJm0NtFjHQUBjDyZcEczA/wodzqh2zw68zaOYHR+pnneehyi+upGtwKdVWCyz/hOCzcNHB3gj
wXO7bl37BXeyfzleXKca0wbXamoa24HbIvKNnawh/zinZI/4Pw1vURw4u4o3ZN1mmmggDLsNKkgv
SVy1tgcTQcK3zNonFPf7ntll1FSF080HYowNIqRnVZcTOobwOoeAQyLLPqXpJ/nYIfi0EHbJaW2l
C1xlk1xngLS+OUPWZ4Avdjnx8zELK2mHsA20d+iziKopunddTNW9GivveZNu17rRsUhVMEACCAB2
mQklnDvF0gZQQUyrnmQU4RKUNIyG47N2yXJwMymENa0aDXgepMAFhv9N7VeOidTejYGgu5kWTLbS
Ijomv22o8A13dgy0loVbqb/v7UDWMPx2O+t+Jfmf8TUHEMzgOtGYC3YE22RDAZzN7XNdxbsPqNEo
pxocLg2M7QpI/99RTvRPsv35/T1rgGBpW8g3vWifC0FcE9QOc7V+7JHA1sJ2wfbF6ATfQESn+Hy1
BJuDNuUqpOzga2MkgO7ukFBid5gjyUOCSDilk/rWzgNGic2HPlaOIeubAocbQ+aGBHD1bBLDFWG5
q/MB7mwiwBXKDWU2YHKYKVK2nRIKS5BPBryFwcniygVZVyX5RZzXMqwqCpteaaznkh754r5uEkhN
L93S3EiduUReG5Fhv9bIPhC4oXpPRYE49EzQBaBCEgbWwtDISfyxtSSR27YK9Argp4eLO5OUuku/
oEKioVz7lZUfgz1yq1zX6QIvwIwx4vRHaG9wPGu3BufZ/j7Uf6utEsazJ9EZzA0auDNy4myRxZcb
3C7PDj7PKHWj53sMM4eVVotn/M6LM/1XSEMY8BI/qloTDcVUWNctzvyluY28F5yMgakMLo01g14U
3CdZL2GPxBEmwuNndjcLZ0fFmIur5mSO7/YXG7w5cmJNgPSDGfjVg7Mq19KVmlb1tJ3ZU5V4/9qE
fGX+QQMoSn9ucRdzVOxHkdW17VfXEnns+dx1OjajCt92SvGyRwp57eDE1XijV5QEvaTjcaslHvWF
C/lkZgm5nRJ4T4cgkedkAQItsk+tq0FeLxVBTN+bo8aPe3MdbTJB8vKRARBENcjXey0pERJ1VViH
3Gme5yJXDTTfLaFB0k9UC1XJ6CIIl//uoP4RpxqnYg+1LxHp80irSbMZ+1lMJyPeSOzZkl/5+Yqv
uyCf/k8ynNLJ7ZId0Y2PbelOtTeyFxMpAwHNQb77LMEYFd+X+QhsXhtfIHPvL9ovOYtTkb3M3klP
8zwwa1Gjd/Qws3x819AoCGGBaEPSDtXJtLXrLcp25OeyQpnK0m2NLjQiGBhzkPIQdx+ZBSXdwvlB
NU+jYGLQm6qaPvMTzd/tknRy3w0SHWyIz474RFv2c4MT9GIzoixzT0l12swcGi9KSelaYRhu1wy0
TWWQZbqFZVeUBuKQ1nFJhsFQPxX3QHnkuvhS2seKqUGNTsPGV6cOXIS/hhXWgDDfY1L+uCVMzLkf
RM4jg11vRFBcZKNBafyHWd4dNXWBfwu3/N0A4MOvbegxf9OJxOKcHUOpRitrPnNXAmUwMW78X64K
mgtMWbMgg97ZAJ+yVjj5hR6B6wbl+ZtRmTlGKrcNJFFwcbkz3Gcgojhbu3XIaBygQO9dqgtrPmfg
jnDXk9BeLAiOFk+7JhTqcdiL/UrQajoP8kn70YvfBtZOVJKLVfbCdwkjT98PNDazl1otl+mjZ8z+
jFSPmXIFK2XE1EeV0c/7rzo+lg2CFdsXzKx5rp277bFY90PwRgKDcv519mrjtyeEnexdxn08FQiW
yJvZTlbjntXz4TV9KB/eQjkJj45IvbiYwJwz4FWGYUA8wESy4W3+m+N/GWkGXI19VC7zw+ElnPg6
9xqJgs6+vn1pp6owNMDBGO1SsrLv4jpDRxKzUBcNcKozyg3bHy4+5JikHLjv4KYrdpurvcY3zbH8
fxLhMJVdPy/4bEWNx27TRW9uouQFAFy/LS/vwaP1qxYPryDBnDkN7QKGa+3ZVjccsK6ecbyQrmMq
Y9G/noUIMvVrdg9GoceaXlpt1EGnPKOVOaped78KYJfngvGZ5xKCZHIKedBqyKunEcw6Q0Y8nA1Q
LUoRDcCMu828SaO1Ab4zUovYkga9276yjqweF2Q+bT3rsK6pL48Vvr4S70NRBqiaIrIL8GxvMIF+
SweimaOZr6XkXPtF9I0tV1fN156YmruqWFlZi+HVxeOBMiYSa8q9dEK97CHNCk2fWKRieO3/RRNv
6/IYhh8Nj/f6AwLWz97qXLv7kYrK2hngNJPizTBhwKdi5c/miZf3/PaFRQPqBLcye51Or42TxCWf
ABVeiCh1WZcDYWApKmElKDevgD8ondGuOKX3a9oYX63WGYlaxnpHbHj6+aMT6eVmTqXsmDnHVS6g
NxhWBQ0zcTG+RIxJg7dz/YsD1/ZJgBf/sXPbvjXbTC8R4js4KS9N6RRXU35sF1Y2nhg6SMrOAGXG
SWZY5dgOwFbPQiytpFvhu37VeXHRQ99okj8QZ1YkvRhZIAyz2FofYcbdhUYL1NCtDvKEkzt1PwYr
BRewMpLoy+OK+r2E8IO/N4/tutoq+920qHbyCHkozm6feF2bDkpQuByr/10rAkw+L/jwk58HY/PT
BWCPbN84HqtdroCd9/DLyoIVYs4AB/bozAcc+sLz0p+BhxwchRCMDocIQWX0xJmcEbxYKs8afCV2
HuHHtLwAt9sN3ofTMKK083E99klKWQ3j18caO3/FWIHkzVO9Ysd3dreT3gUcTdmfJzfuSHJAniyt
Ph/iV7TV3PwN3i0cfshec+nDSs+5gX7KEeo5Ab/X4bijdfb6BUEVCte2QEf72MteuSMPIw3/vOPb
r7C2YrKpwjZW5i1G7R0bP3ooaNsCMOuNPv5poIX4NtMbet+OQUjM3r21ME6T1bnZuqDhCuujx6xG
MTjGdp38CCdekaYR4foOlcH6jW8PbSBJ8b4TgxKogzb1MJvOiFnRv1jukD01q3IanDImojBDyMDe
MyZpMBN1BTgBgJV56+s43WTn2srslOv6xZiQLT/rBmWgU8xL718tIaDs/JxnwEq/6zx53vPsTnTf
3skEtwC7fEF58G6DK/WM3ewbu1VxaryqBccuL6ZE8HSVuhMa3OuC6Z7WUE0UykPE44MEXsJCGm0l
W3lq2/EIEAxgK5QDEwbzWam6e4zFFD2+mpLeNblkr/Musj/q23mXAGyy6eAy1AeVss+PMP1J4Yi9
3xjfdOnM+n2uqzE4uEy//lCjudOk2gaLJyPlg7jdu0FrnVkKl47RBdBODeX1rs58VGx6Jt8bZgzO
IMiUHcwL1NQaZJMKWvDxxrik9dJysf8fXjHnLCka9B/7sg6z6UrmZjFEbaKn1mWA97Q/NVJ9j7LS
JQCyJgxhSsGxZlnS87kkYMwLCNwYSmDlJdjFJQME0GNUvTKdo6QNXsPv4A7du3vFaiB1MvmUSVMo
o4/RvBsnFgM5MY0BfDSsF22V9Kd6DAPpwjYq8Z5VuMdkH83Slv72OAQ9qPspdE9ZFZU86vKkloZR
8VKZnJSkgh2o07Eiyi9wEc9QJEDbl+FKBAcTYKyw+GvM4Ca/V4r5aZi+LONDwpcFNEIhkEcVMuJX
Z5PtadSL1DVY0ihiQczN4JAZCRyJdHDVOwYeGgbtsSxp0Ov2znhJOWk5PkUtXGl9b/SMYrdAApZA
WfnseY9MwuTAML5ZTLXDPvXpjI5jB9eb71zrHZTH1aT6dpHNvtUMtT8jCaG13Vt5rzuruyLLYqTa
yIRq2OEjX3eObT34xirRPxWXAgOriC1RtQDcApL5nhQq723GOrDYmF+h6f0ihK2lHgWJ47U5+A/G
WdH8gi6hYSIMeA8pUgPPstkr5cqwZGrzmg+9Hgn5PIfFnQT1DfK/J19NufpWVjXQM1DAbi44iaGa
cL0ojabKZS87YMsUWXl0ShZj1ClEkGU6nMHx6gKKXyLbDBEZqMVMzlSj9ySi73SSFM//zPCBMowi
wgLgPua814B9VOasajp3RSQqk1B0+vvixumaAR2bPgoo5LB8/37q7ifNxiUPxKeKPHhFPQndA8Q3
b9IQZ4ojK0xxB3jtwBVszsmOzB5mlllSzb4RBsC65f2cb97WGIrAUKjGMw+UUddBV5FHNs9ssedX
1jlb8Krh9fnto+PL67nWw/F5yCfituxWqiNa/HFhdtOorjkwvFznhzBCYO+NYF7FK78VLsxc0ENq
Vn0MXxptxPkgy5r95AfK61UHLNGHQG/IRCuR6CJCfJvBDQD7fNjRquHVmiGynt9rCiGLZmXDgKi2
tG+n3QP+Nr57210J+Qzbc3sxQVxmNsZAJ4h0WcBWEs9+Yxun7LYDumkGd9oFGjMEeqQ+S7sKw5J2
j0NO83tFSTZm7rNqI1YpeygsPvpi+dBVuATjSXLtPzFiuCZDfCJhS9U0LWTClWjIjl6J2nR5YKYa
3kynHXYNiiQKImW9iQBRGhy0LmXwdUcNNIzw07BaaqsnMkuTKqHxRtHJNXLdcC5fZCOCxSy4re8y
1jS+JIHTAUrYlo6Qw4PbLTM1N7mygdJ6DNhDKWvF4SvA4sdKzv1fasMzs/4mxn5LMiM8iGTP8fIK
amc1Vfsb39kjG+teYvLNiaEq6U0TE66J/en+kDuH8DuvNr5yAK9wUBfuq1MXJqlJUXBnAQWLe4nF
AyrLaLZPYcbKU1++eaG4CNh10ZZPzZZvky9988KZ4o+b2p9fMFLIE+jFoITqfWxSolWv17y9dw2p
QqTyM8ZwkLNCP5e20Wj5VMox4a8p1+vbBfa5gTWOLHz1Qz6Dzbqn39g+wX69mT518jei5FQvwufi
Fl3tRFnatFrFfZ8ybihg37tLPdjYb28pkPZ1GOdoV7r1xSs3XAahtIQnrJ/BkpjQBiQzCaDKIkjf
kemKPSpgV/JRe4JoXK8lXIW/H35HZgw5UjW0eVleGeBVJvrYg068IUgLm1Bcykm5eETMHWZGxPdt
eEMSmBXpp+5+FG+5HDA/5qzXB2UtAp8jHPTByX0osNvBgkevk1B5j7OapSvxZy8Rgj85hOUMuUlg
ftzwd8WdXHGEx4daXeEF1SKMC4Lk+4VcCJIjR4ubKGe4jQBoIykXU2yqvJ23HGm+kedpQ9TIncYv
Ww4xYlVFHsvAZ3Zcwxu+ktqWmLKzy+uukdB0a8f9xoLm0wNaFOzQLdcYrpMddaDhT7tFcIfAlYb1
2ZYEQWGFiYWo0PCvaZCkmksaw4XRU3vLfXSg1uqXLUqE9L4D5L7QxN2hxw2E7+HEHJSskANAS9j7
8h9DOr7j8T4bK2I/RTLQXEM7j/1N5TymfuNdjsZrQNnPimte4KSkenFkc4vvrheE//jyP4s0Xttr
jqv6rwE8OG/YhcMJtkdus0t0O8pvNtDRAH3kRfbu5ThzCSPBuwB4BZ1o45uvlmdkjlKPPUV56m7V
TNmE72agvP8eH+qITdSwwO8o4qVXVVDhdmFzB6swis9/sAM3pJWG+52IiRcCsrx9tE6ShrcIWddJ
kiXByq5jLkIgSQWXuv7jfPJgt3GpRK9/uiJbjCvNSPU2iTOhROVNfpCvCOlWtSV8QTn0p+6G9vYi
Q+QQ9fqWpUpYg4pjGV2ofAHZMiPWXVFuPk9CAPmrnoAaailB5/vxcfW1OPARSTxmXsdShej0V1c1
zAVFECe+lZFLnNdAz9bZ9Xm6gj4biNjEi61KPew6lED4YmL1ANWKPXRgl3TR3TuZUkLsqQj5hlky
4vHLWBZqMom65Gb8/f6DwbtKDOyj3flz9sVO8UzcDFGKWV5emAV6wtOxCU13WHKtKQFSyknFNwYi
u57907RsJbdNAZTToij0y4yPAe5iScQmcwyT/kAbBPDX713UepeHbF0I6D3m7XvkJFXhy+icQAKc
zuQdL8fPHEW6kCzyybQAlRf2NjC9ySoIWiB5Fhaj/k98gaAktjlR1AaggSaNwePAAdNhulquNf6/
pb9Uk4KengaRqpvLCqEjAEBKSD2syzMYaiB8Q6KJmy00UeQH2HFtCYXkKpJTBK9SxZrJkUWPzgdF
QRF9hk5eBWdgT5AyHnmcrzK04ML8112/LLP1N2vnb0nnbVllJUloKeM9IXTFejyWDywTBDc8KKiJ
u8x6ajnQ8waDTizJVa9QyDvVDzaCzkp86P06H0V19x4MNQEWyPYl/NF6BJpm4gEAxP+cttJq1Kz6
IrcsGhAB/7xjhqDEHWNWaq59tXDwBmCD2Y27MDBLgOTdAPEFKOS+Ulm0C3MWXrK70kViIbPjUlT5
h8kkxs7jmTzn6lryvoY/TWhKg1OzBaF9Nwn8yIvbwWEOqRgKEI7hjqm9k6XdUWGf6964occwOQIj
CMtDG9HLFnqSArgXFzwiLq7C7yI33mNK+cB5HxYSJS4bsLurr/5azF/EUhGYc4H7DsXepkB0hkDQ
DVMI94bLBUYqO8S/iP7OW5iEb0VbWy4nmC4PbwQKwinD+yARo4CCCrvUiCOWhKDSP9NuhSFCx11b
kkJ8/nqvRK4oaa3+gxpWkAN76bYyleblfQwxmMGgXROuf0uu/mFT2O+NdEYb3wQd8HNnZmp5B5Nt
wXNp/Fix8WBZdOiCKUbXhmcOoZnvlZqPP5mJ2Hua7jAYQkDk+c5Vf3wZAmO2Eactrz/NEP+Jwr7c
JEyblT339hjDlJK5nV/t0TWc1R+LtJK5sq5+SoIkcO0gr17JhoaQ7tqGVfgHID7rw6U0RFFtZ3xm
zhJVmH/eRd712b3Em528vkTxOttrD7GBozNqpLqvQ3jKb+g5ewGDKGb6tChOaj19qhKvtIgTRb+w
tfR2MiO054oVdPrvTt1off+Xuj2idiFhYOELjuG2j97jkgQWmXFO3MtpZ6gkNVHuJ5n9QE1c9xZo
VUGIDV2y9ROmEchMYyr8RXUZUD+T5s2T5QnOwhr5qfhJghbVO9eHNDv6Bi9V8A/S/Sgx5KbtZYGv
7KlALjSwiJqZ0tbtEV95E2TYtIczgXNTX4tYda/a7Iroh2Lf0biZ/hMKK0h7TNUmlJogB8ofqzia
lj1EP279hpgnsvUFEttD1Qavulg60jOm+eHB8Zom87G9mRMqFXY7B1kHS5xwcAAq6fbX/nuXymkO
LyHAziZl84awxPpGUHbBrlFullpMKEUeXYD6ALzcwBHieNxzjTN81uhVZxhO7BcqHZfmhNDurOQa
/BTOaLZrkGYswxzkL/EBXYYuJB4o61EhAsU7zhC1241cYnfAcxlJ/acxMumPg57ZGnV7fvZptNpT
RhJMfSmtrWFjGN7Z6HYH6liV+BeZiOOjhoyPIV3agVFcYv+6aXkssmeIaqdTWBIoBrTDaySAw5lN
Ya4U7H0xGRkQfaoRtdMc4UqDs/4RLaBrp+e04ZJj
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
