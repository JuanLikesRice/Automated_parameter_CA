// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
// Date        : Sun Oct 29 00:38:21 2023
// Host        : Juwan running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ bscan_jtag_0_sim_netlist.v
// Design      : bscan_jtag_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "bscan_jtag_0,bscan_jtag_v1_0_0_bscan_jtag,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "bscan_jtag_v1_0_0_bscan_jtag,Vivado 2022.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (S_BSCAN_bscanid_en,
    S_BSCAN_capture,
    S_BSCAN_drck,
    S_BSCAN_reset,
    S_BSCAN_runtest,
    S_BSCAN_sel,
    S_BSCAN_shift,
    S_BSCAN_tck,
    S_BSCAN_tdi,
    S_BSCAN_tms,
    S_BSCAN_update,
    S_BSCAN_tdo,
    JTAG_TDO,
    JTAG_TDI,
    JTAG_TMS,
    JTAG_TCK);
  (* x_interface_info = "xilinx.com:interface:bscan:1.0 S_BSCAN BSCANID_EN" *) input S_BSCAN_bscanid_en;
  (* x_interface_info = "xilinx.com:interface:bscan:1.0 S_BSCAN CAPTURE" *) input S_BSCAN_capture;
  (* x_interface_info = "xilinx.com:interface:bscan:1.0 S_BSCAN DRCK" *) input S_BSCAN_drck;
  (* x_interface_info = "xilinx.com:interface:bscan:1.0 S_BSCAN RESET" *) input S_BSCAN_reset;
  (* x_interface_info = "xilinx.com:interface:bscan:1.0 S_BSCAN RUNTEST" *) input S_BSCAN_runtest;
  (* x_interface_info = "xilinx.com:interface:bscan:1.0 S_BSCAN SEL" *) input S_BSCAN_sel;
  (* x_interface_info = "xilinx.com:interface:bscan:1.0 S_BSCAN SHIFT" *) input S_BSCAN_shift;
  (* x_interface_info = "xilinx.com:interface:bscan:1.0 S_BSCAN TCK" *) input S_BSCAN_tck;
  (* x_interface_info = "xilinx.com:interface:bscan:1.0 S_BSCAN TDI" *) input S_BSCAN_tdi;
  (* x_interface_info = "xilinx.com:interface:bscan:1.0 S_BSCAN TMS" *) input S_BSCAN_tms;
  (* x_interface_info = "xilinx.com:interface:bscan:1.0 S_BSCAN UPDATE" *) input S_BSCAN_update;
  (* x_interface_info = "xilinx.com:interface:bscan:1.0 S_BSCAN TDO" *) output S_BSCAN_tdo;
  (* x_interface_info = "xilinx.com:interface:jtag:2.0 M_JTAG TDO" *) input JTAG_TDO;
  (* x_interface_info = "xilinx.com:interface:jtag:2.0 M_JTAG TDI" *) output JTAG_TDI;
  (* x_interface_info = "xilinx.com:interface:jtag:2.0 M_JTAG TMS" *) output JTAG_TMS;
  (* x_interface_info = "xilinx.com:interface:jtag:2.0 M_JTAG TCK" *) output JTAG_TCK;

  wire JTAG_TCK;
  wire JTAG_TDI;
  wire JTAG_TDO;
  wire JTAG_TMS;
  wire S_BSCAN_bscanid_en;
  wire S_BSCAN_capture;
  wire S_BSCAN_reset;
  wire S_BSCAN_sel;
  wire S_BSCAN_shift;
  wire S_BSCAN_tck;
  wire S_BSCAN_tdi;
  wire S_BSCAN_tdo;
  wire S_BSCAN_tms;
  wire S_BSCAN_update;

  (* KEEP_HIERARCHY = "soft" *) 
  (* enable_tck_bufg = "1" *) 
  (* is_du_within_envelope = "true" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bscan_jtag_v1_0_0_bscan_jtag U0
       (.JTAG_TCK(JTAG_TCK),
        .JTAG_TDI(JTAG_TDI),
        .JTAG_TDO(JTAG_TDO),
        .JTAG_TMS(JTAG_TMS),
        .S_BSCAN_bscanid_en(S_BSCAN_bscanid_en),
        .S_BSCAN_capture(S_BSCAN_capture),
        .S_BSCAN_drck(1'b0),
        .S_BSCAN_reset(S_BSCAN_reset),
        .S_BSCAN_runtest(1'b0),
        .S_BSCAN_sel(S_BSCAN_sel),
        .S_BSCAN_shift(S_BSCAN_shift),
        .S_BSCAN_tck(S_BSCAN_tck),
        .S_BSCAN_tdi(S_BSCAN_tdi),
        .S_BSCAN_tdo(S_BSCAN_tdo),
        .S_BSCAN_tms(S_BSCAN_tms),
        .S_BSCAN_update(S_BSCAN_update));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2022.1"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
nMUwdFPwQEJ5egkGoWe2psf2kXEKabAUAcir7JGOgWrdpoHgGUjF9MKlK7RcaZRfuyOAAZdxC0L5
ueYIANArNJeiCADO3u22Ln+SpyK9aWBd/8sSq1devePsETuxI/hse2WCJnYKD5veSKuzZJSpU9z4
FHZKKdJpA6e7aZE6rmo=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
EuMcQJLrF0CLoivCbsZPdgULBC/NjjeRfdVj39LhIjce8unhLCsHpHKKlA6bVybdaEYQCOFS4eXC
gUSnEmssamx2yn3dfVwjEtZPK2TL1R7fdavBWuY74OPyvuoqsnMZ4kuEEZB8pRIiCI91q0PBF6SV
JeZYiAF87vJ5k1h44N2/xHByZ5xB1sci5WsQyRHinDYlvwUhEmBKp//CfVhH58OxM7BYXsdgzUtX
GP9wc+ZZ7CvIVEk96PgOhP8CAqPE505a1YhD03po5O5y7k07lrgcG78hDXAHyyf9+hRsbU/73nTY
aQ98eLnCax/gy7rbavZdGuAB+RzjMagYB6HKWQ==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
b0S9CLdb2usr4mpTvKNMVjVyCbgOkqjFAp7oh9LyI1IzMVmaDckbFUOZo9LMSA05vPfCR9HLbVTK
TzusvQL6D5v17f4T/YreM7ibiCrUAsjmBfnc3p58v4oVLqUwxXVSp4f7b3IlJWKrAPjOPnflHz0z
px06ydVV62sOEzzUVsc=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
b03Y4W3VkHk0ctrsHTLbMxoTyC3iArvUSEldsFI2oOhQZeD/KpCMgykq2+ZFlp6yA2JD4i0Rsegk
ENyWwnhOHTtuQc3UMbbk/OGwACJk49uCYJC2GYoZHcB2808c/5mEVFkwLuqE6JBYoIUHhLKbIjbR
sw3j5qM068EexqbGxyACcXJagn7iHlcm88dVd7+9htXS0pTImzM79tt5OKWhi2Ki1upLsq0fPFUF
Ww3ewSbv+kTY8+jyCupfc16qlmp/GvnbAHB/PDkxYp7nvnGcF4WK1E9dZlBBXNIn6sn6QBanyIy9
WzQ41fkWFHMERztULYI5hyCC6vDlbOxBEjFTRA==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
JcFcCLjpzklxZTg8STTkVZbecyQzmDly7L5zGdQKplsBGZeRSAgue8KfGd1wgh0bCG8Rr7bvbRfL
M1+ugFWz6qgTctoB1PVvXJ9b9wSuZjaAFajTUXgmodWimhFiw4TfDh6F9ysKBQa/kb1VFykRN595
sVS/RbZuwGHnNhysEUGvTQNccuUD2L8RQjgI376vb8ep0yj7W/ex/kypT4C/xZ5zmO6VXJuKDHcA
BuVA5OEFgWpFZWExTtOuhR3BQstWq0SQZ5oRffGDmfPZX6YC9qJKrpNHfJgT/aNl0J6aFB8Gvajr
a193eivbmbC6TQs54N+CJfHbCoHtCrBrug6U6Q==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2021_07", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
gwKnE+6AO5qFCMAENEyFw0NI3dX5GZ8qel8WhlCGHKUFoWo3/omANFxd+bHZVxBz1lBwmrYwj40i
6XuJJirQ0gxDrIHMDZRQ2Ss4twg5ba0A9pnfbW35UJP4Yj4/VhjLuwkdFlHdy70pgW7it9r2I6wb
ThTKw6qQceXVT+OvOtt5vu0A6+7nmdH6dSmFLYRSw/Qqv5QbQkO4Hm6zvcU+v9MPWs56VHGIZn+n
ZCDoJ1lPtYC8K0VO8esuOt+rpGSHBzLWHlP/hz+lnSajQDNPsq+Xq0SALIup47ex8Ka5XgdmaNY5
5kg6IJ5/wBwtdcgxnjbSJAVzHvWCO/Np4xedbA==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
QJ7c7SddkHY3sflmy65YrREoR/mWFCBjeX1sw4eHFeB+GAnUXyTJjguZN5CkzOnSdTNRF/WvgmL+
AErk41tYKNBMxuygFThtm93n7aptv4pg5MgQg6X81pzghFhl3YaER73tKFXeWQZBdZUX2aD+N0XS
4T5riBisf+yTetE9YDHFlpCDMHV7fw2SBjh0eMW/BMeOQ4wTq/wOnGlHOBA13XkCjKa78F6sJZA6
E5Wbndh9c2K3BkovUuoT+H6BV36ceV7ILcqFdM6W6/p5DNp6Llzs+dY6kLe4QkkbB6z79CCRxNKx
OsHJEXDwGIOEnDHGh6kIl0skYI8jBeB7OfEZKA==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
DpvTUmRL0b4ApsOfGmmmVc66Q9XfxQB3HkBLLkBO5Yd/j4dBYJZ8fwEs2y27xf7mqS8sEFpYvhQT
BkocZ2U3Q6aZZfauP+j4q2JefBxDCouEJ//fb69AcUBcOBkqlpDeXkYNer6nToeiaUEUOwUHDNGi
Dbp/0MeA8/HKu0+y+aGqQXKvi4j9w3HRBgdKE382wjQBir7YCKTN80GWI5SkwsMB5kV+5UPOBTQH
VnTzMfSIe0fhWy4PyYLsL7pM/wZt0zA0qGCC7bQu3H2emXw7ZlvHYxiK8vr4qqKZkTv7/KGe5VPp
qzI4nwVD36QBxhj2fMBGXi+NjSo4RL+Ubqt89AxIHJmkuNLZXf2w3OgINnxK2RjVkYvHQHjIuoza
zdIlyc14MknAEJ5qRVSLzU3fei0fI93d0YXJJeBXo1qM5utq5176iVglkYLz9RfB0BS/JBscousf
8GvQ9gVF5FLczv47Y59q1GkLNfB5AHjxMFgxoMYwNYcsdyOOvi42J8uh

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Ug89DSVXFMJgRkkJGIDyNFoZ2H7c0H8N/r0uauKkUM3Cra0UvLXrIKHAmy6CJIN69ttcmaXTGdGQ
kLXbG17xUAn/e6179v6c0Auykxatf9gqtw/cP4aLyaLw/jlYqgXEqqfnH1Ao5Gh4MCpEcb/kwni/
/8iFBgTP9m9tBCfvP9e0QqyggAWlCOfTBCINi6g2cLJK7Rpq78iZfk8KE3IQRAVcKu5p88scXF57
d242e2SVbt87ataKx7hMNv6hFIw6V2BvIETMrl5TBrd+gX8w+j0hXNQn/8J9SC61GLQQIRKBY4Xv
q5TfW0TrE1hAFYMjgsfQGVN0LQvxn65TmR4VXA==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 19616)
`pragma protect data_block
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
gJaVbIIb8Nw=
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