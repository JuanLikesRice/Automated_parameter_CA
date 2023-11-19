// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
// Date        : Mon Nov 13 02:40:47 2023
// Host        : Juwan running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ blk_mem_gen_0_sim_netlist.v
// Design      : blk_mem_gen_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "blk_mem_gen_0,blk_mem_gen_v8_4_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_5,Vivado 2022.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_5 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 19328)
`pragma protect data_block
+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
XTQT394=
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
