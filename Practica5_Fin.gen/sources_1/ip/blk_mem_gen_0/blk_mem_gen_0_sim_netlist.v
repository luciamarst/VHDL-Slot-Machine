// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Sun Dec  3 20:08:26 2023
// Host        : DESKTOP-D2RDL1H running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/PC/OneDrive/Escritorio/UNIVERSIDAD/TOC/PRACTICAS/Practica_5/Practica_5.gen/sources_1/ip/blk_mem_gen_0/blk_mem_gen_0_sim_netlist.v
// Design      : blk_mem_gen_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "blk_mem_gen_0,blk_mem_gen_v8_4_6,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_6,Vivado 2023.1" *) 
(* NotValidForBitStream *)
module blk_mem_gen_0
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
  (* C_INIT_FILE = "blk_mem_gen_0.mem" *) 
  (* C_INIT_FILE_NAME = "blk_mem_gen_0.mif" *) 
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
  blk_mem_gen_0_blk_mem_gen_v8_4_6 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 20640)
`pragma protect data_block
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
zproZYLT
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
