// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Sun Dec  3 17:58:18 2023
// Host        : DESKTOP-D2RDL1H running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/PC/OneDrive/Escritorio/UNIVERSIDAD/TOC/PRACTICAS/Practica_5/Practica_5.gen/sources_1/ip/pr5_mem_dig0/pr5_mem_dig0_sim_netlist.v
// Design      : pr5_mem_dig0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "pr5_mem_dig0,blk_mem_gen_v8_4_6,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_6,Vivado 2023.1" *) 
(* NotValidForBitStream *)
module pr5_mem_dig0
   (clka,
    wea,
    addra,
    dina,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [0:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [5:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [3:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [3:0]douta;

  wire [5:0]addra;
  wire clka;
  wire [3:0]dina;
  wire [3:0]douta;
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
  wire [3:0]NLW_U0_doutb_UNCONNECTED;
  wire [5:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [5:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "6" *) 
  (* C_ADDRB_WIDTH = "6" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "1" *) 
  (* C_COUNT_36K_BRAM = "0" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "F" *) 
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
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     2.37365 mW" *) 
  (* C_FAMILY = "artix7" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "0" *) 
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
  (* C_INIT_FILE = "pr5_mem_dig0.mem" *) 
  (* C_INIT_FILE_NAME = "pr5_mem_dig0.mif" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "1" *) 
  (* C_MEM_TYPE = "0" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "52" *) 
  (* C_READ_DEPTH_B = "52" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "4" *) 
  (* C_READ_WIDTH_B = "4" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "0" *) 
  (* C_USE_BYTE_WEA = "0" *) 
  (* C_USE_BYTE_WEB = "0" *) 
  (* C_USE_DEFAULT_DATA = "1" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "1" *) 
  (* C_WEB_WIDTH = "1" *) 
  (* C_WRITE_DEPTH_A = "52" *) 
  (* C_WRITE_DEPTH_B = "52" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "4" *) 
  (* C_WRITE_WIDTH_B = "4" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  pr5_mem_dig0_blk_mem_gen_v8_4_6 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb({1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[3:0]),
        .eccpipece(1'b0),
        .ena(1'b0),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[5:0]),
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
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[5:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[3:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0}),
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
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2023.1"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
aMT3usC6uizzcwnzOCX4OsS16Ob+YxFcsGovFpFklbnaIaD1S0lVdxenTwHPp6ByIEi+ehwr6Rgg
z/3AlTheI5NFTM8ihiMA18/wmUxI7EbaftJACA1LykUKCuj5myy0T+DACuv3sGYIZS38TZTZnnBC
FGAlvTZmRWs+JzneH3o=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
lR9ZerhYSAb39nzEkeYvhnwEs5t9y/+yTDf8KuoUtR1BGeHZq8pA/YxtjzQLtaOW1R1IQUb0FtSI
e3CYAb7WHYbIjcpw3vKHvW1SqcGn9CMGa556CYKmD2oF12Kow8xRaFvMSBUVxX7HsHxNWnRd+PU1
+C0YayU2KFIY/7Yl6cZ5luAzhw/6SW3PFYUIyyqWy5MCIXweHOwQR2IpQEdlDur5nluN7i7BeB+i
fxwwHh8TU/g7T4mhZFkiTuBKdLAtQOjxWxzqTMxgcuAjlTylY16FgMFOASdvvSbqBZJjbxMdVloU
rYjS8O/8rWktv8GXcaIdBJ2BRj01q7jsChsbwA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
Qvl63GHz9mq2xOB7elt/vAQ7URLGdD1Lkcz7f3Wtw31dwjjjbP62Ny/Jr6OmBIheWlgejx38qxAT
TrHiiEyjKmGcnPn1Tn2n+cH4RAxCbOFnCI9n6+YsYMTe9JkplGhGGr39SkFgJz0I2IKpPsuqTjCj
rhf49TAryNMQeRpREJA=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
MA+9Ro+dh339m0iZrkKbqTKN8gQ5xkxN/SPCfhkOn+5jjgCTS5IOKLHil+HsZDjX333ebxnornwG
MOBxyEdFfLM8SA+bs2r41J/j0af2VVMmCM3hOh8JmZxB4X9Jg/glegNCbvwzqxMbOQNEy+zt7j5t
TFVD82RtPFmYVVYZZyll/WvAA+0aVpyjzLCIM1GznFky0RWLv65Wp4MJJnNRRrtG3muMznVO/u2s
tACsJ9jzv9M0IlMYjYH9BixhG6cZX02I4LEXXaPkhdOINlMMhsbArXtc9NphzmS4bY1/1yF1D6YD
EKLyS2Sr3HDl0O/lefN+jvfG8iKuVl55PNNrVQ==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
wpMTg7STjFkUDhOqdNPa0FHXTnHQgKmhvqDv+rRVBvMiQ8O7u8oj7ibITq3o+jugJsMJ60B410gQ
JFTcqCJKYmYJvqi8rPLLOYDmFG6ZLP/Ixr3n62IyIaCeDltBahi3yV009QN0X+iuzuFCL+Y7g9ff
IvAgyBly+Z3Itv2H9EJMZPMl17Sa7IkgjmWqzVXIKNMKn0iDVYsQw6ZgzQDYQ8N8IvTIEggU3/lh
6Nf0hV0ev3qOv/2P+4w0U766Ux3yLuzPJSI7bKm3/ip9NjhOytxOiKKqVXhKG8dzbbuS5u3EE/eq
q6YxkL7gpvNltVqqBnJB6vHSyWrD6+MqsCtR9A==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2022_10", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Q7Q4SSp70lxFryaopuic9VVP/Ire0pSsPEIMYdURBAczC7ShkuYeV02U7L3BlAiyBE4vBKcwYSQd
cWiaj8sVP7q4kxoRHKxLV1R5PIO6l4DsLWE2E+1MLyUPME0w5KTular/oX8EPCJ5n/8VCtW7x4Vf
dpeyki1/IAPJkAyi3zVZKHzgKhEwnZaZZtZYuMWoPZMt4V38sAcE42Raf+7yfFWG5HO74JY6iEnW
gJeRk58K+avB/XLF2/j2RQZfjTYizrprT2tUMBK6e7DRWZZtk8AOcsMhUikev44IFGNbNXjP8BXC
0J3y3P7pCFT6l+saU83nRwi/H25fSA34diJtNw==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
a/8ooC+s+6nfvfa1+oBhsvYWLJjFgp83DI1kNyOi5Am+ugPbGRmgGZudfyo6yw6Yd5gGbLm5aToQ
5G4cGF5HaXD5TU6A0ZZFMTIbzFLE76JMjjIxX8JcaJIZpSmrXqlru8l5gDINUEAmwUY3mRQnjcGJ
0Z+kMRH8iAEF+gEviPiFZSBbJeOPqivIS217kimQJX3BeNbNPQTP+GUidcRywpGMh5avxtA0kDRO
F9SoCSyTm9hr2v9hsK1IUAYQLb7n2/R+z5YNKNzt1oN4qgJH1wZfdI8if2K8+ohyOdnxrrgJOWdj
cOqr7cGqEOYfBMTIQeHVZzb7NGWVN+9B8XSUaQ==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
FLPvOUNRWNW2GU+FEGmt2XWthOT5bY/31DRbol2cUmEGNF6b2XzpCosNKGx/o2n6sQvGP39KRFCs
nJu0ihe2dUGee9nEZZUcpwPjnEfXVI3yJaRVYy8iL+rm59lXq0jX4sjAPieDvv8shgAnoXLTZGlq
K+2c1JhaHt+nFi27TDrYar/+P8nP1MhocOS7BjzCvSs0foEXj92/qD+71Sm/LqGr8cjlH2qTJJ8B
ynxoH6iT+bksVA2VbtPT9o6h1kJ/zwP4wcsL9l+qSlJhd4GI11JPux26DlNyIi41WmufQcfiT0PB
r6O9+0E9lV9ODwKdjaxfZRK29rjKeq2yr0jWhMV38XKKqHAJli7MIypGRXcCo+u89H87KgYt+ebw
s3foIqCe0JKR57WzI8VD6XdNtOL8eBxK539oemx4vkE0cGYECZKYru6A2hPeZOYDD5eyWSUlQl1R
EciK49WM8HnssyRVcmE6di6bISMbVi0TZG/v98bz+9UZa8DtqMVYH0tz

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
fphquQOeFuqByo36Gh2C1zEC1J6u9swSMbMzsKldIvLm+SZ6/hr/N8KJ/G2vBABzX6UtbVuP1ZXx
AxdftP4Aqis1B3Bs6989aQG9eo0SOHA7r6aFLtFb3qoD5Pvqw4aVNU4z4EtTpFpn/jCWD21lKROf
q5X32HRfFq1jwqod+9vIbUNRRzz5y9VHvXfacZlxDazSPmcCF4hxB1KqWqT44KmYVkDedgkgnYgb
ZGidHnTb3W7C8tSqC9ac4kNJCL429QndtddweESJNlpX+65pt9Irok9pkOodwoj0QScswOIFjhBZ
/GrzZLQcFWiD3gXRU4DazzxQnGdRH4qEIRWziw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
1lUYYHPCt1BUJOvcBbgMU2GSQiqfxItz4ntieMaenjrtsE9SLwaU6xB0tBl8Atw5yP/RRNww1kX/
9uZbTz5He3r9mPVt+mGxB4N3f9BbCrQRb4USVPgKO/+vWUfMQERGklScy0+fz75WuxH74CjRUoDI
8iyssb2cUNnfDe13jIoI8gM1w4w/Pkxkmb6Mef53QMxacHAWEZeytcH3fuL/adO263D8P90U3XJv
vBXJmbjkRVi9qzjBzfMxuOy2KbZaZgR3BLzaffIfFnMwg/Rb8sGls5pQsZv5jL2wk3+Bj3OXBYdd
pDyjGoalJBzObKzd/t15kNHwY4FXYFcZLQPncw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
YRmSEzaa2WFVvMH1BwWc1TIUpVbzSEIP0VbI6n0sEgct/X4PiTfMQmK1jBVCaISIzwBxscKQwZOt
mb/nmINGg6I7ih39LSbBMtx6cdCUiyaLkPeRbqfyPpKhvnUIFmdKVvTd1dYzxeOeuDnhSVaBaAcN
3lngSg7lIbmhLIGjC29yQrBTiLArbVZi6IRGronMK51e3UrYa6GspsznhiuRcXjEb4bHKrJ2CM5Z
BUwA+E9949sQgyOagFZbLVle2ESbwBaoxcAPn2gxfRHlT0leqyLgUGDZLsfArzGzw9BTGzyEG2TR
XOrKFNYRfMXMrnGsBM7acIelY4LdAMgsKgDH/A==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 20624)
`pragma protect data_block
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
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
