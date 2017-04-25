// Copyright 1986-2015 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2015.4 (lin64) Build 1412921 Wed Nov 18 09:44:32 MST 2015
// Date        : Sun Apr  2 18:52:28 2017
// Host        : nlandy-MacBookPro running 64-bit Ubuntu 14.04.5 LTS
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               /home/nlandy/Documents/Reconfig/Project/neural_network/neural_network.sim/sim_1/impl/timing/MAC_tb_time_impl.v
// Design      : neuron
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

module MAC
   (final,
    B,
    \weights[1] ,
    A,
    \input[0][15] ,
    \weights[0] ,
    \input[0][0] );
  output [15:-16]final;
  input [14:0]B;
  input [15:-16]\weights[1] ;
  input [16:0]A;
  input [14:0]\input[0][15] ;
  input [15:-16]\weights[0] ;
  input [16:0]\input[0][0] ;

  wire [16:0]A;
  wire [14:0]B;
  wire arg__0_n_100;
  wire arg__0_n_101;
  wire arg__0_n_102;
  wire arg__0_n_103;
  wire arg__0_n_104;
  wire arg__0_n_105;
  wire arg__0_n_92;
  wire arg__0_n_93;
  wire arg__0_n_94;
  wire arg__0_n_95;
  wire arg__0_n_96;
  wire arg__0_n_97;
  wire arg__0_n_98;
  wire arg__0_n_99;
  wire arg__1_n_106;
  wire arg__1_n_107;
  wire arg__1_n_108;
  wire arg__1_n_109;
  wire arg__1_n_110;
  wire arg__1_n_111;
  wire arg__1_n_112;
  wire arg__1_n_113;
  wire arg__1_n_114;
  wire arg__1_n_115;
  wire arg__1_n_116;
  wire arg__1_n_117;
  wire arg__1_n_118;
  wire arg__1_n_119;
  wire arg__1_n_120;
  wire arg__1_n_121;
  wire arg__1_n_122;
  wire arg__1_n_123;
  wire arg__1_n_124;
  wire arg__1_n_125;
  wire arg__1_n_126;
  wire arg__1_n_127;
  wire arg__1_n_128;
  wire arg__1_n_129;
  wire arg__1_n_130;
  wire arg__1_n_131;
  wire arg__1_n_132;
  wire arg__1_n_133;
  wire arg__1_n_134;
  wire arg__1_n_135;
  wire arg__1_n_136;
  wire arg__1_n_137;
  wire arg__1_n_138;
  wire arg__1_n_139;
  wire arg__1_n_140;
  wire arg__1_n_141;
  wire arg__1_n_142;
  wire arg__1_n_143;
  wire arg__1_n_144;
  wire arg__1_n_145;
  wire arg__1_n_146;
  wire arg__1_n_147;
  wire arg__1_n_148;
  wire arg__1_n_149;
  wire arg__1_n_150;
  wire arg__1_n_151;
  wire arg__1_n_152;
  wire arg__1_n_153;
  wire arg__1_n_24;
  wire arg__1_n_25;
  wire arg__1_n_26;
  wire arg__1_n_27;
  wire arg__1_n_28;
  wire arg__1_n_29;
  wire arg__1_n_30;
  wire arg__1_n_31;
  wire arg__1_n_32;
  wire arg__1_n_33;
  wire arg__1_n_34;
  wire arg__1_n_35;
  wire arg__1_n_36;
  wire arg__1_n_37;
  wire arg__1_n_38;
  wire arg__1_n_39;
  wire arg__1_n_40;
  wire arg__1_n_41;
  wire arg__1_n_42;
  wire arg__1_n_43;
  wire arg__1_n_44;
  wire arg__1_n_45;
  wire arg__1_n_46;
  wire arg__1_n_47;
  wire arg__1_n_48;
  wire arg__1_n_49;
  wire arg__1_n_50;
  wire arg__1_n_51;
  wire arg__1_n_52;
  wire arg__1_n_53;
  wire arg__1_n_89;
  wire arg__2_n_100;
  wire arg__2_n_101;
  wire arg__2_n_102;
  wire arg__2_n_103;
  wire arg__2_n_104;
  wire arg__2_n_105;
  wire arg__2_n_75;
  wire arg__2_n_76;
  wire arg__2_n_77;
  wire arg__2_n_78;
  wire arg__2_n_79;
  wire arg__2_n_80;
  wire arg__2_n_81;
  wire arg__2_n_82;
  wire arg__2_n_83;
  wire arg__2_n_84;
  wire arg__2_n_85;
  wire arg__2_n_86;
  wire arg__2_n_87;
  wire arg__2_n_88;
  wire arg__2_n_89;
  wire arg__2_n_90;
  wire arg__2_n_91;
  wire arg__2_n_92;
  wire arg__2_n_93;
  wire arg__2_n_94;
  wire arg__2_n_95;
  wire arg__2_n_96;
  wire arg__2_n_97;
  wire arg__2_n_98;
  wire arg__2_n_99;
  wire arg__3_n_100;
  wire arg__3_n_101;
  wire arg__3_n_102;
  wire arg__3_n_103;
  wire arg__3_n_104;
  wire arg__3_n_105;
  wire arg__3_n_106;
  wire arg__3_n_107;
  wire arg__3_n_108;
  wire arg__3_n_109;
  wire arg__3_n_110;
  wire arg__3_n_111;
  wire arg__3_n_112;
  wire arg__3_n_113;
  wire arg__3_n_114;
  wire arg__3_n_115;
  wire arg__3_n_116;
  wire arg__3_n_117;
  wire arg__3_n_118;
  wire arg__3_n_119;
  wire arg__3_n_120;
  wire arg__3_n_121;
  wire arg__3_n_122;
  wire arg__3_n_123;
  wire arg__3_n_124;
  wire arg__3_n_125;
  wire arg__3_n_126;
  wire arg__3_n_127;
  wire arg__3_n_128;
  wire arg__3_n_129;
  wire arg__3_n_130;
  wire arg__3_n_131;
  wire arg__3_n_132;
  wire arg__3_n_133;
  wire arg__3_n_134;
  wire arg__3_n_135;
  wire arg__3_n_136;
  wire arg__3_n_137;
  wire arg__3_n_138;
  wire arg__3_n_139;
  wire arg__3_n_140;
  wire arg__3_n_141;
  wire arg__3_n_142;
  wire arg__3_n_143;
  wire arg__3_n_144;
  wire arg__3_n_145;
  wire arg__3_n_146;
  wire arg__3_n_147;
  wire arg__3_n_148;
  wire arg__3_n_149;
  wire arg__3_n_150;
  wire arg__3_n_151;
  wire arg__3_n_152;
  wire arg__3_n_153;
  wire arg__3_n_89;
  wire arg__3_n_90;
  wire arg__3_n_91;
  wire arg__3_n_92;
  wire arg__3_n_93;
  wire arg__3_n_94;
  wire arg__3_n_95;
  wire arg__3_n_96;
  wire arg__3_n_97;
  wire arg__3_n_98;
  wire arg__3_n_99;
  wire arg__4_n_100;
  wire arg__4_n_101;
  wire arg__4_n_102;
  wire arg__4_n_103;
  wire arg__4_n_104;
  wire arg__4_n_105;
  wire arg__4_n_92;
  wire arg__4_n_93;
  wire arg__4_n_94;
  wire arg__4_n_95;
  wire arg__4_n_96;
  wire arg__4_n_97;
  wire arg__4_n_98;
  wire arg__4_n_99;
  wire arg__5_n_106;
  wire arg__5_n_107;
  wire arg__5_n_108;
  wire arg__5_n_109;
  wire arg__5_n_110;
  wire arg__5_n_111;
  wire arg__5_n_112;
  wire arg__5_n_113;
  wire arg__5_n_114;
  wire arg__5_n_115;
  wire arg__5_n_116;
  wire arg__5_n_117;
  wire arg__5_n_118;
  wire arg__5_n_119;
  wire arg__5_n_120;
  wire arg__5_n_121;
  wire arg__5_n_122;
  wire arg__5_n_123;
  wire arg__5_n_124;
  wire arg__5_n_125;
  wire arg__5_n_126;
  wire arg__5_n_127;
  wire arg__5_n_128;
  wire arg__5_n_129;
  wire arg__5_n_130;
  wire arg__5_n_131;
  wire arg__5_n_132;
  wire arg__5_n_133;
  wire arg__5_n_134;
  wire arg__5_n_135;
  wire arg__5_n_136;
  wire arg__5_n_137;
  wire arg__5_n_138;
  wire arg__5_n_139;
  wire arg__5_n_140;
  wire arg__5_n_141;
  wire arg__5_n_142;
  wire arg__5_n_143;
  wire arg__5_n_144;
  wire arg__5_n_145;
  wire arg__5_n_146;
  wire arg__5_n_147;
  wire arg__5_n_148;
  wire arg__5_n_149;
  wire arg__5_n_150;
  wire arg__5_n_151;
  wire arg__5_n_152;
  wire arg__5_n_153;
  wire arg__5_n_24;
  wire arg__5_n_25;
  wire arg__5_n_26;
  wire arg__5_n_27;
  wire arg__5_n_28;
  wire arg__5_n_29;
  wire arg__5_n_30;
  wire arg__5_n_31;
  wire arg__5_n_32;
  wire arg__5_n_33;
  wire arg__5_n_34;
  wire arg__5_n_35;
  wire arg__5_n_36;
  wire arg__5_n_37;
  wire arg__5_n_38;
  wire arg__5_n_39;
  wire arg__5_n_40;
  wire arg__5_n_41;
  wire arg__5_n_42;
  wire arg__5_n_43;
  wire arg__5_n_44;
  wire arg__5_n_45;
  wire arg__5_n_46;
  wire arg__5_n_47;
  wire arg__5_n_48;
  wire arg__5_n_49;
  wire arg__5_n_50;
  wire arg__5_n_51;
  wire arg__5_n_52;
  wire arg__5_n_53;
  wire arg__5_n_89;
  wire arg__6_n_100;
  wire arg__6_n_101;
  wire arg__6_n_102;
  wire arg__6_n_103;
  wire arg__6_n_104;
  wire arg__6_n_105;
  wire arg__6_n_75;
  wire arg__6_n_76;
  wire arg__6_n_77;
  wire arg__6_n_78;
  wire arg__6_n_79;
  wire arg__6_n_80;
  wire arg__6_n_81;
  wire arg__6_n_82;
  wire arg__6_n_83;
  wire arg__6_n_84;
  wire arg__6_n_85;
  wire arg__6_n_86;
  wire arg__6_n_87;
  wire arg__6_n_88;
  wire arg__6_n_89;
  wire arg__6_n_90;
  wire arg__6_n_91;
  wire arg__6_n_92;
  wire arg__6_n_93;
  wire arg__6_n_94;
  wire arg__6_n_95;
  wire arg__6_n_96;
  wire arg__6_n_97;
  wire arg__6_n_98;
  wire arg__6_n_99;
  wire arg_n_100;
  wire arg_n_101;
  wire arg_n_102;
  wire arg_n_103;
  wire arg_n_104;
  wire arg_n_105;
  wire arg_n_106;
  wire arg_n_107;
  wire arg_n_108;
  wire arg_n_109;
  wire arg_n_110;
  wire arg_n_111;
  wire arg_n_112;
  wire arg_n_113;
  wire arg_n_114;
  wire arg_n_115;
  wire arg_n_116;
  wire arg_n_117;
  wire arg_n_118;
  wire arg_n_119;
  wire arg_n_120;
  wire arg_n_121;
  wire arg_n_122;
  wire arg_n_123;
  wire arg_n_124;
  wire arg_n_125;
  wire arg_n_126;
  wire arg_n_127;
  wire arg_n_128;
  wire arg_n_129;
  wire arg_n_130;
  wire arg_n_131;
  wire arg_n_132;
  wire arg_n_133;
  wire arg_n_134;
  wire arg_n_135;
  wire arg_n_136;
  wire arg_n_137;
  wire arg_n_138;
  wire arg_n_139;
  wire arg_n_140;
  wire arg_n_141;
  wire arg_n_142;
  wire arg_n_143;
  wire arg_n_144;
  wire arg_n_145;
  wire arg_n_146;
  wire arg_n_147;
  wire arg_n_148;
  wire arg_n_149;
  wire arg_n_150;
  wire arg_n_151;
  wire arg_n_152;
  wire arg_n_153;
  wire arg_n_89;
  wire arg_n_90;
  wire arg_n_91;
  wire arg_n_92;
  wire arg_n_93;
  wire arg_n_94;
  wire arg_n_95;
  wire arg_n_96;
  wire arg_n_97;
  wire arg_n_98;
  wire arg_n_99;
  wire [15:-16]final;
  wire \final_OBUF[-13]_inst_i_11_n_0 ;
  wire \final_OBUF[-13]_inst_i_12_n_0 ;
  wire \final_OBUF[-13]_inst_i_13_n_0 ;
  wire \final_OBUF[-13]_inst_i_14_n_0 ;
  wire \final_OBUF[-13]_inst_i_1_n_0 ;
  wire \final_OBUF[-13]_inst_i_2_n_0 ;
  wire \final_OBUF[-13]_inst_i_3_n_0 ;
  wire \final_OBUF[-13]_inst_i_4_n_0 ;
  wire \final_OBUF[-13]_inst_i_5_n_0 ;
  wire \final_OBUF[-13]_inst_i_6_n_0 ;
  wire \final_OBUF[-13]_inst_i_7_n_0 ;
  wire \final_OBUF[-13]_inst_i_8_n_0 ;
  wire \final_OBUF[-13]_inst_i_9_n_0 ;
  wire \final_OBUF[-1]_inst_i_10_n_0 ;
  wire \final_OBUF[-1]_inst_i_11_n_0 ;
  wire \final_OBUF[-1]_inst_i_12_n_0 ;
  wire \final_OBUF[-1]_inst_i_13_n_0 ;
  wire \final_OBUF[-1]_inst_i_14_n_0 ;
  wire \final_OBUF[-1]_inst_i_15_n_0 ;
  wire \final_OBUF[-1]_inst_i_1_n_0 ;
  wire \final_OBUF[-1]_inst_i_2_n_0 ;
  wire \final_OBUF[-1]_inst_i_3_n_0 ;
  wire \final_OBUF[-1]_inst_i_4_n_0 ;
  wire \final_OBUF[-1]_inst_i_5_n_0 ;
  wire \final_OBUF[-1]_inst_i_6_n_0 ;
  wire \final_OBUF[-1]_inst_i_7_n_0 ;
  wire \final_OBUF[-1]_inst_i_8_n_0 ;
  wire \final_OBUF[-1]_inst_i_9_n_0 ;
  wire \final_OBUF[-5]_inst_i_10_n_0 ;
  wire \final_OBUF[-5]_inst_i_11_n_0 ;
  wire \final_OBUF[-5]_inst_i_12_n_0 ;
  wire \final_OBUF[-5]_inst_i_13_n_0 ;
  wire \final_OBUF[-5]_inst_i_14_n_0 ;
  wire \final_OBUF[-5]_inst_i_15_n_0 ;
  wire \final_OBUF[-5]_inst_i_1_n_0 ;
  wire \final_OBUF[-5]_inst_i_2_n_0 ;
  wire \final_OBUF[-5]_inst_i_3_n_0 ;
  wire \final_OBUF[-5]_inst_i_4_n_0 ;
  wire \final_OBUF[-5]_inst_i_5_n_0 ;
  wire \final_OBUF[-5]_inst_i_6_n_0 ;
  wire \final_OBUF[-5]_inst_i_7_n_0 ;
  wire \final_OBUF[-5]_inst_i_8_n_0 ;
  wire \final_OBUF[-5]_inst_i_9_n_0 ;
  wire \final_OBUF[-9]_inst_i_10_n_0 ;
  wire \final_OBUF[-9]_inst_i_11_n_0 ;
  wire \final_OBUF[-9]_inst_i_12_n_0 ;
  wire \final_OBUF[-9]_inst_i_13_n_0 ;
  wire \final_OBUF[-9]_inst_i_14_n_0 ;
  wire \final_OBUF[-9]_inst_i_15_n_0 ;
  wire \final_OBUF[-9]_inst_i_1_n_0 ;
  wire \final_OBUF[-9]_inst_i_2_n_0 ;
  wire \final_OBUF[-9]_inst_i_3_n_0 ;
  wire \final_OBUF[-9]_inst_i_4_n_0 ;
  wire \final_OBUF[-9]_inst_i_5_n_0 ;
  wire \final_OBUF[-9]_inst_i_6_n_0 ;
  wire \final_OBUF[-9]_inst_i_7_n_0 ;
  wire \final_OBUF[-9]_inst_i_8_n_0 ;
  wire \final_OBUF[-9]_inst_i_9_n_0 ;
  wire \final_OBUF[11]_inst_i_10_n_0 ;
  wire \final_OBUF[11]_inst_i_11_n_0 ;
  wire \final_OBUF[11]_inst_i_12_n_0 ;
  wire \final_OBUF[11]_inst_i_13_n_0 ;
  wire \final_OBUF[11]_inst_i_14_n_0 ;
  wire \final_OBUF[11]_inst_i_15_n_0 ;
  wire \final_OBUF[11]_inst_i_1_n_0 ;
  wire \final_OBUF[11]_inst_i_2_n_0 ;
  wire \final_OBUF[11]_inst_i_3_n_0 ;
  wire \final_OBUF[11]_inst_i_4_n_0 ;
  wire \final_OBUF[11]_inst_i_5_n_0 ;
  wire \final_OBUF[11]_inst_i_6_n_0 ;
  wire \final_OBUF[11]_inst_i_7_n_0 ;
  wire \final_OBUF[11]_inst_i_8_n_0 ;
  wire \final_OBUF[11]_inst_i_9_n_0 ;
  wire \final_OBUF[15]_inst_i_10_n_0 ;
  wire \final_OBUF[15]_inst_i_12_n_0 ;
  wire \final_OBUF[15]_inst_i_13_n_0 ;
  wire \final_OBUF[15]_inst_i_14_n_0 ;
  wire \final_OBUF[15]_inst_i_15_n_0 ;
  wire \final_OBUF[15]_inst_i_3_n_0 ;
  wire \final_OBUF[15]_inst_i_4_n_0 ;
  wire \final_OBUF[15]_inst_i_5_n_0 ;
  wire \final_OBUF[15]_inst_i_6_n_0 ;
  wire \final_OBUF[15]_inst_i_7_n_0 ;
  wire \final_OBUF[15]_inst_i_8_n_0 ;
  wire \final_OBUF[15]_inst_i_9_n_0 ;
  wire \final_OBUF[3]_inst_i_10_n_0 ;
  wire \final_OBUF[3]_inst_i_11_n_0 ;
  wire \final_OBUF[3]_inst_i_12_n_0 ;
  wire \final_OBUF[3]_inst_i_13_n_0 ;
  wire \final_OBUF[3]_inst_i_14_n_0 ;
  wire \final_OBUF[3]_inst_i_15_n_0 ;
  wire \final_OBUF[3]_inst_i_1_n_0 ;
  wire \final_OBUF[3]_inst_i_2_n_0 ;
  wire \final_OBUF[3]_inst_i_3_n_0 ;
  wire \final_OBUF[3]_inst_i_4_n_0 ;
  wire \final_OBUF[3]_inst_i_5_n_0 ;
  wire \final_OBUF[3]_inst_i_6_n_0 ;
  wire \final_OBUF[3]_inst_i_7_n_0 ;
  wire \final_OBUF[3]_inst_i_8_n_0 ;
  wire \final_OBUF[3]_inst_i_9_n_0 ;
  wire \final_OBUF[7]_inst_i_10_n_0 ;
  wire \final_OBUF[7]_inst_i_11_n_0 ;
  wire \final_OBUF[7]_inst_i_12_n_0 ;
  wire \final_OBUF[7]_inst_i_13_n_0 ;
  wire \final_OBUF[7]_inst_i_14_n_0 ;
  wire \final_OBUF[7]_inst_i_15_n_0 ;
  wire \final_OBUF[7]_inst_i_1_n_0 ;
  wire \final_OBUF[7]_inst_i_2_n_0 ;
  wire \final_OBUF[7]_inst_i_3_n_0 ;
  wire \final_OBUF[7]_inst_i_4_n_0 ;
  wire \final_OBUF[7]_inst_i_5_n_0 ;
  wire \final_OBUF[7]_inst_i_6_n_0 ;
  wire \final_OBUF[7]_inst_i_7_n_0 ;
  wire \final_OBUF[7]_inst_i_8_n_0 ;
  wire \final_OBUF[7]_inst_i_9_n_0 ;
  wire [16:0]\input[0][0] ;
  wire [14:0]\input[0][15] ;
  wire [15:-16]l;
  wire [31:0]to_s6;
  wire [15:-16]\weights[0] ;
  wire [15:-16]\weights[1] ;
  wire NLW_arg_CARRYCASCOUT_UNCONNECTED;
  wire NLW_arg_MULTSIGNOUT_UNCONNECTED;
  wire NLW_arg_OVERFLOW_UNCONNECTED;
  wire NLW_arg_PATTERNBDETECT_UNCONNECTED;
  wire NLW_arg_PATTERNDETECT_UNCONNECTED;
  wire NLW_arg_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_arg_ACOUT_UNCONNECTED;
  wire [17:0]NLW_arg_BCOUT_UNCONNECTED;
  wire [3:0]NLW_arg_CARRYOUT_UNCONNECTED;
  wire [47:17]NLW_arg_P_UNCONNECTED;
  wire NLW_arg__0_CARRYCASCOUT_UNCONNECTED;
  wire NLW_arg__0_MULTSIGNOUT_UNCONNECTED;
  wire NLW_arg__0_OVERFLOW_UNCONNECTED;
  wire NLW_arg__0_PATTERNBDETECT_UNCONNECTED;
  wire NLW_arg__0_PATTERNDETECT_UNCONNECTED;
  wire NLW_arg__0_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_arg__0_ACOUT_UNCONNECTED;
  wire [17:0]NLW_arg__0_BCOUT_UNCONNECTED;
  wire [3:0]NLW_arg__0_CARRYOUT_UNCONNECTED;
  wire [47:14]NLW_arg__0_P_UNCONNECTED;
  wire [47:0]NLW_arg__0_PCOUT_UNCONNECTED;
  wire NLW_arg__1_CARRYCASCOUT_UNCONNECTED;
  wire NLW_arg__1_MULTSIGNOUT_UNCONNECTED;
  wire NLW_arg__1_OVERFLOW_UNCONNECTED;
  wire NLW_arg__1_PATTERNBDETECT_UNCONNECTED;
  wire NLW_arg__1_PATTERNDETECT_UNCONNECTED;
  wire NLW_arg__1_UNDERFLOW_UNCONNECTED;
  wire [17:0]NLW_arg__1_BCOUT_UNCONNECTED;
  wire [3:0]NLW_arg__1_CARRYOUT_UNCONNECTED;
  wire [47:0]NLW_arg__1_P_UNCONNECTED;
  wire NLW_arg__2_CARRYCASCOUT_UNCONNECTED;
  wire NLW_arg__2_MULTSIGNOUT_UNCONNECTED;
  wire NLW_arg__2_OVERFLOW_UNCONNECTED;
  wire NLW_arg__2_PATTERNBDETECT_UNCONNECTED;
  wire NLW_arg__2_PATTERNDETECT_UNCONNECTED;
  wire NLW_arg__2_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_arg__2_ACOUT_UNCONNECTED;
  wire [17:0]NLW_arg__2_BCOUT_UNCONNECTED;
  wire [3:0]NLW_arg__2_CARRYOUT_UNCONNECTED;
  wire [47:31]NLW_arg__2_P_UNCONNECTED;
  wire [47:0]NLW_arg__2_PCOUT_UNCONNECTED;
  wire NLW_arg__3_CARRYCASCOUT_UNCONNECTED;
  wire NLW_arg__3_MULTSIGNOUT_UNCONNECTED;
  wire NLW_arg__3_OVERFLOW_UNCONNECTED;
  wire NLW_arg__3_PATTERNBDETECT_UNCONNECTED;
  wire NLW_arg__3_PATTERNDETECT_UNCONNECTED;
  wire NLW_arg__3_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_arg__3_ACOUT_UNCONNECTED;
  wire [17:0]NLW_arg__3_BCOUT_UNCONNECTED;
  wire [3:0]NLW_arg__3_CARRYOUT_UNCONNECTED;
  wire [47:17]NLW_arg__3_P_UNCONNECTED;
  wire NLW_arg__4_CARRYCASCOUT_UNCONNECTED;
  wire NLW_arg__4_MULTSIGNOUT_UNCONNECTED;
  wire NLW_arg__4_OVERFLOW_UNCONNECTED;
  wire NLW_arg__4_PATTERNBDETECT_UNCONNECTED;
  wire NLW_arg__4_PATTERNDETECT_UNCONNECTED;
  wire NLW_arg__4_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_arg__4_ACOUT_UNCONNECTED;
  wire [17:0]NLW_arg__4_BCOUT_UNCONNECTED;
  wire [3:0]NLW_arg__4_CARRYOUT_UNCONNECTED;
  wire [47:14]NLW_arg__4_P_UNCONNECTED;
  wire [47:0]NLW_arg__4_PCOUT_UNCONNECTED;
  wire NLW_arg__5_CARRYCASCOUT_UNCONNECTED;
  wire NLW_arg__5_MULTSIGNOUT_UNCONNECTED;
  wire NLW_arg__5_OVERFLOW_UNCONNECTED;
  wire NLW_arg__5_PATTERNBDETECT_UNCONNECTED;
  wire NLW_arg__5_PATTERNDETECT_UNCONNECTED;
  wire NLW_arg__5_UNDERFLOW_UNCONNECTED;
  wire [17:0]NLW_arg__5_BCOUT_UNCONNECTED;
  wire [3:0]NLW_arg__5_CARRYOUT_UNCONNECTED;
  wire [47:0]NLW_arg__5_P_UNCONNECTED;
  wire NLW_arg__6_CARRYCASCOUT_UNCONNECTED;
  wire NLW_arg__6_MULTSIGNOUT_UNCONNECTED;
  wire NLW_arg__6_OVERFLOW_UNCONNECTED;
  wire NLW_arg__6_PATTERNBDETECT_UNCONNECTED;
  wire NLW_arg__6_PATTERNDETECT_UNCONNECTED;
  wire NLW_arg__6_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_arg__6_ACOUT_UNCONNECTED;
  wire [17:0]NLW_arg__6_BCOUT_UNCONNECTED;
  wire [3:0]NLW_arg__6_CARRYOUT_UNCONNECTED;
  wire [47:31]NLW_arg__6_P_UNCONNECTED;
  wire [47:0]NLW_arg__6_PCOUT_UNCONNECTED;
  wire [2:0]\NLW_final_OBUF[-13]_inst_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_final_OBUF[-13]_inst_i_11_CO_UNCONNECTED ;
  wire [2:0]\NLW_final_OBUF[-13]_inst_i_2_CO_UNCONNECTED ;
  wire [2:0]\NLW_final_OBUF[-1]_inst_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_final_OBUF[-1]_inst_i_11_CO_UNCONNECTED ;
  wire [2:0]\NLW_final_OBUF[-1]_inst_i_2_CO_UNCONNECTED ;
  wire [2:0]\NLW_final_OBUF[-5]_inst_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_final_OBUF[-5]_inst_i_11_CO_UNCONNECTED ;
  wire [2:0]\NLW_final_OBUF[-5]_inst_i_2_CO_UNCONNECTED ;
  wire [2:0]\NLW_final_OBUF[-9]_inst_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_final_OBUF[-9]_inst_i_11_CO_UNCONNECTED ;
  wire [2:0]\NLW_final_OBUF[-9]_inst_i_2_CO_UNCONNECTED ;
  wire [2:0]\NLW_final_OBUF[11]_inst_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_final_OBUF[11]_inst_i_11_CO_UNCONNECTED ;
  wire [2:0]\NLW_final_OBUF[11]_inst_i_2_CO_UNCONNECTED ;
  wire [3:0]\NLW_final_OBUF[15]_inst_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_final_OBUF[15]_inst_i_11_CO_UNCONNECTED ;
  wire [3:0]\NLW_final_OBUF[15]_inst_i_2_CO_UNCONNECTED ;
  wire [2:0]\NLW_final_OBUF[3]_inst_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_final_OBUF[3]_inst_i_11_CO_UNCONNECTED ;
  wire [2:0]\NLW_final_OBUF[3]_inst_i_2_CO_UNCONNECTED ;
  wire [2:0]\NLW_final_OBUF[7]_inst_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_final_OBUF[7]_inst_i_11_CO_UNCONNECTED ;
  wire [2:0]\NLW_final_OBUF[7]_inst_i_2_CO_UNCONNECTED ;

  (* METHODOLOGY_DRC_VIOS = "{SYNTH-10 {cell *THIS*} {string 15x18 4}}" *) 
  DSP48E1 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(0),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    arg
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,\weights[1] [0:-16]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_arg_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({B[14],B[14],B[14],B}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_arg_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_arg_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_arg_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(1'b0),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_arg_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_arg_OVERFLOW_UNCONNECTED),
        .P({NLW_arg_P_UNCONNECTED[47:17],arg_n_89,arg_n_90,arg_n_91,arg_n_92,arg_n_93,arg_n_94,arg_n_95,arg_n_96,arg_n_97,arg_n_98,arg_n_99,arg_n_100,arg_n_101,arg_n_102,arg_n_103,arg_n_104,arg_n_105}),
        .PATTERNBDETECT(NLW_arg_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_arg_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT({arg_n_106,arg_n_107,arg_n_108,arg_n_109,arg_n_110,arg_n_111,arg_n_112,arg_n_113,arg_n_114,arg_n_115,arg_n_116,arg_n_117,arg_n_118,arg_n_119,arg_n_120,arg_n_121,arg_n_122,arg_n_123,arg_n_124,arg_n_125,arg_n_126,arg_n_127,arg_n_128,arg_n_129,arg_n_130,arg_n_131,arg_n_132,arg_n_133,arg_n_134,arg_n_135,arg_n_136,arg_n_137,arg_n_138,arg_n_139,arg_n_140,arg_n_141,arg_n_142,arg_n_143,arg_n_144,arg_n_145,arg_n_146,arg_n_147,arg_n_148,arg_n_149,arg_n_150,arg_n_151,arg_n_152,arg_n_153}),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_arg_UNDERFLOW_UNCONNECTED));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-10 {cell *THIS*} {string 15x15 4}}" *) 
  DSP48E1 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(0),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    arg__0
       (.A({B[14],B[14],B[14],B[14],B[14],B[14],B[14],B[14],B[14],B[14],B[14],B[14],B[14],B[14],B[14],B}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_arg__0_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({\weights[1] [15],\weights[1] [15],\weights[1] [15],\weights[1] [15:1]}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_arg__0_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_arg__0_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_arg__0_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(1'b0),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_arg__0_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b1,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_arg__0_OVERFLOW_UNCONNECTED),
        .P({NLW_arg__0_P_UNCONNECTED[47:14],arg__0_n_92,arg__0_n_93,arg__0_n_94,arg__0_n_95,arg__0_n_96,arg__0_n_97,arg__0_n_98,arg__0_n_99,arg__0_n_100,arg__0_n_101,arg__0_n_102,arg__0_n_103,arg__0_n_104,arg__0_n_105}),
        .PATTERNBDETECT(NLW_arg__0_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_arg__0_PATTERNDETECT_UNCONNECTED),
        .PCIN({arg_n_106,arg_n_107,arg_n_108,arg_n_109,arg_n_110,arg_n_111,arg_n_112,arg_n_113,arg_n_114,arg_n_115,arg_n_116,arg_n_117,arg_n_118,arg_n_119,arg_n_120,arg_n_121,arg_n_122,arg_n_123,arg_n_124,arg_n_125,arg_n_126,arg_n_127,arg_n_128,arg_n_129,arg_n_130,arg_n_131,arg_n_132,arg_n_133,arg_n_134,arg_n_135,arg_n_136,arg_n_137,arg_n_138,arg_n_139,arg_n_140,arg_n_141,arg_n_142,arg_n_143,arg_n_144,arg_n_145,arg_n_146,arg_n_147,arg_n_148,arg_n_149,arg_n_150,arg_n_151,arg_n_152,arg_n_153}),
        .PCOUT(NLW_arg__0_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_arg__0_UNDERFLOW_UNCONNECTED));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-10 {cell *THIS*} {string 18x18 4}}" *) 
  DSP48E1 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(0),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    arg__1
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,A}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT({arg__1_n_24,arg__1_n_25,arg__1_n_26,arg__1_n_27,arg__1_n_28,arg__1_n_29,arg__1_n_30,arg__1_n_31,arg__1_n_32,arg__1_n_33,arg__1_n_34,arg__1_n_35,arg__1_n_36,arg__1_n_37,arg__1_n_38,arg__1_n_39,arg__1_n_40,arg__1_n_41,arg__1_n_42,arg__1_n_43,arg__1_n_44,arg__1_n_45,arg__1_n_46,arg__1_n_47,arg__1_n_48,arg__1_n_49,arg__1_n_50,arg__1_n_51,arg__1_n_52,arg__1_n_53}),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,\weights[1] [0:-16]}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_arg__1_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_arg__1_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_arg__1_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(1'b0),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_arg__1_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_arg__1_OVERFLOW_UNCONNECTED),
        .P({NLW_arg__1_P_UNCONNECTED[47:17],arg__1_n_89,NLW_arg__1_P_UNCONNECTED[15:0]}),
        .PATTERNBDETECT(NLW_arg__1_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_arg__1_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT({arg__1_n_106,arg__1_n_107,arg__1_n_108,arg__1_n_109,arg__1_n_110,arg__1_n_111,arg__1_n_112,arg__1_n_113,arg__1_n_114,arg__1_n_115,arg__1_n_116,arg__1_n_117,arg__1_n_118,arg__1_n_119,arg__1_n_120,arg__1_n_121,arg__1_n_122,arg__1_n_123,arg__1_n_124,arg__1_n_125,arg__1_n_126,arg__1_n_127,arg__1_n_128,arg__1_n_129,arg__1_n_130,arg__1_n_131,arg__1_n_132,arg__1_n_133,arg__1_n_134,arg__1_n_135,arg__1_n_136,arg__1_n_137,arg__1_n_138,arg__1_n_139,arg__1_n_140,arg__1_n_141,arg__1_n_142,arg__1_n_143,arg__1_n_144,arg__1_n_145,arg__1_n_146,arg__1_n_147,arg__1_n_148,arg__1_n_149,arg__1_n_150,arg__1_n_151,arg__1_n_152,arg__1_n_153}),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_arg__1_UNDERFLOW_UNCONNECTED));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-10 {cell *THIS*} {string 18x15 4}}" *) 
  DSP48E1 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(0),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("CASCADE"),
    .BCASCREG(0),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    arg__2
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACIN({arg__1_n_24,arg__1_n_25,arg__1_n_26,arg__1_n_27,arg__1_n_28,arg__1_n_29,arg__1_n_30,arg__1_n_31,arg__1_n_32,arg__1_n_33,arg__1_n_34,arg__1_n_35,arg__1_n_36,arg__1_n_37,arg__1_n_38,arg__1_n_39,arg__1_n_40,arg__1_n_41,arg__1_n_42,arg__1_n_43,arg__1_n_44,arg__1_n_45,arg__1_n_46,arg__1_n_47,arg__1_n_48,arg__1_n_49,arg__1_n_50,arg__1_n_51,arg__1_n_52,arg__1_n_53}),
        .ACOUT(NLW_arg__2_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({\weights[1] [15],\weights[1] [15],\weights[1] [15],\weights[1] [15:1]}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_arg__2_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_arg__2_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_arg__2_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(1'b0),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_arg__2_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b1,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_arg__2_OVERFLOW_UNCONNECTED),
        .P({NLW_arg__2_P_UNCONNECTED[47:31],arg__2_n_75,arg__2_n_76,arg__2_n_77,arg__2_n_78,arg__2_n_79,arg__2_n_80,arg__2_n_81,arg__2_n_82,arg__2_n_83,arg__2_n_84,arg__2_n_85,arg__2_n_86,arg__2_n_87,arg__2_n_88,arg__2_n_89,arg__2_n_90,arg__2_n_91,arg__2_n_92,arg__2_n_93,arg__2_n_94,arg__2_n_95,arg__2_n_96,arg__2_n_97,arg__2_n_98,arg__2_n_99,arg__2_n_100,arg__2_n_101,arg__2_n_102,arg__2_n_103,arg__2_n_104,arg__2_n_105}),
        .PATTERNBDETECT(NLW_arg__2_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_arg__2_PATTERNDETECT_UNCONNECTED),
        .PCIN({arg__1_n_106,arg__1_n_107,arg__1_n_108,arg__1_n_109,arg__1_n_110,arg__1_n_111,arg__1_n_112,arg__1_n_113,arg__1_n_114,arg__1_n_115,arg__1_n_116,arg__1_n_117,arg__1_n_118,arg__1_n_119,arg__1_n_120,arg__1_n_121,arg__1_n_122,arg__1_n_123,arg__1_n_124,arg__1_n_125,arg__1_n_126,arg__1_n_127,arg__1_n_128,arg__1_n_129,arg__1_n_130,arg__1_n_131,arg__1_n_132,arg__1_n_133,arg__1_n_134,arg__1_n_135,arg__1_n_136,arg__1_n_137,arg__1_n_138,arg__1_n_139,arg__1_n_140,arg__1_n_141,arg__1_n_142,arg__1_n_143,arg__1_n_144,arg__1_n_145,arg__1_n_146,arg__1_n_147,arg__1_n_148,arg__1_n_149,arg__1_n_150,arg__1_n_151,arg__1_n_152,arg__1_n_153}),
        .PCOUT(NLW_arg__2_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_arg__2_UNDERFLOW_UNCONNECTED));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-10 {cell *THIS*} {string 15x18 4}}" *) 
  DSP48E1 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(0),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    arg__3
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,\weights[0] [0:-16]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_arg__3_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({\input[0][15] [14],\input[0][15] [14],\input[0][15] [14],\input[0][15] }),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_arg__3_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_arg__3_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_arg__3_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(1'b0),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_arg__3_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_arg__3_OVERFLOW_UNCONNECTED),
        .P({NLW_arg__3_P_UNCONNECTED[47:17],arg__3_n_89,arg__3_n_90,arg__3_n_91,arg__3_n_92,arg__3_n_93,arg__3_n_94,arg__3_n_95,arg__3_n_96,arg__3_n_97,arg__3_n_98,arg__3_n_99,arg__3_n_100,arg__3_n_101,arg__3_n_102,arg__3_n_103,arg__3_n_104,arg__3_n_105}),
        .PATTERNBDETECT(NLW_arg__3_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_arg__3_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT({arg__3_n_106,arg__3_n_107,arg__3_n_108,arg__3_n_109,arg__3_n_110,arg__3_n_111,arg__3_n_112,arg__3_n_113,arg__3_n_114,arg__3_n_115,arg__3_n_116,arg__3_n_117,arg__3_n_118,arg__3_n_119,arg__3_n_120,arg__3_n_121,arg__3_n_122,arg__3_n_123,arg__3_n_124,arg__3_n_125,arg__3_n_126,arg__3_n_127,arg__3_n_128,arg__3_n_129,arg__3_n_130,arg__3_n_131,arg__3_n_132,arg__3_n_133,arg__3_n_134,arg__3_n_135,arg__3_n_136,arg__3_n_137,arg__3_n_138,arg__3_n_139,arg__3_n_140,arg__3_n_141,arg__3_n_142,arg__3_n_143,arg__3_n_144,arg__3_n_145,arg__3_n_146,arg__3_n_147,arg__3_n_148,arg__3_n_149,arg__3_n_150,arg__3_n_151,arg__3_n_152,arg__3_n_153}),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_arg__3_UNDERFLOW_UNCONNECTED));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-10 {cell *THIS*} {string 15x15 4}}" *) 
  DSP48E1 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(0),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    arg__4
       (.A({\input[0][15] [14],\input[0][15] [14],\input[0][15] [14],\input[0][15] [14],\input[0][15] [14],\input[0][15] [14],\input[0][15] [14],\input[0][15] [14],\input[0][15] [14],\input[0][15] [14],\input[0][15] [14],\input[0][15] [14],\input[0][15] [14],\input[0][15] [14],\input[0][15] [14],\input[0][15] }),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_arg__4_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({\weights[0] [15],\weights[0] [15],\weights[0] [15],\weights[0] [15:1]}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_arg__4_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_arg__4_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_arg__4_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(1'b0),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_arg__4_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b1,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_arg__4_OVERFLOW_UNCONNECTED),
        .P({NLW_arg__4_P_UNCONNECTED[47:14],arg__4_n_92,arg__4_n_93,arg__4_n_94,arg__4_n_95,arg__4_n_96,arg__4_n_97,arg__4_n_98,arg__4_n_99,arg__4_n_100,arg__4_n_101,arg__4_n_102,arg__4_n_103,arg__4_n_104,arg__4_n_105}),
        .PATTERNBDETECT(NLW_arg__4_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_arg__4_PATTERNDETECT_UNCONNECTED),
        .PCIN({arg__3_n_106,arg__3_n_107,arg__3_n_108,arg__3_n_109,arg__3_n_110,arg__3_n_111,arg__3_n_112,arg__3_n_113,arg__3_n_114,arg__3_n_115,arg__3_n_116,arg__3_n_117,arg__3_n_118,arg__3_n_119,arg__3_n_120,arg__3_n_121,arg__3_n_122,arg__3_n_123,arg__3_n_124,arg__3_n_125,arg__3_n_126,arg__3_n_127,arg__3_n_128,arg__3_n_129,arg__3_n_130,arg__3_n_131,arg__3_n_132,arg__3_n_133,arg__3_n_134,arg__3_n_135,arg__3_n_136,arg__3_n_137,arg__3_n_138,arg__3_n_139,arg__3_n_140,arg__3_n_141,arg__3_n_142,arg__3_n_143,arg__3_n_144,arg__3_n_145,arg__3_n_146,arg__3_n_147,arg__3_n_148,arg__3_n_149,arg__3_n_150,arg__3_n_151,arg__3_n_152,arg__3_n_153}),
        .PCOUT(NLW_arg__4_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_arg__4_UNDERFLOW_UNCONNECTED));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-10 {cell *THIS*} {string 18x18 4}}" *) 
  DSP48E1 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(0),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    arg__5
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,\input[0][0] }),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT({arg__5_n_24,arg__5_n_25,arg__5_n_26,arg__5_n_27,arg__5_n_28,arg__5_n_29,arg__5_n_30,arg__5_n_31,arg__5_n_32,arg__5_n_33,arg__5_n_34,arg__5_n_35,arg__5_n_36,arg__5_n_37,arg__5_n_38,arg__5_n_39,arg__5_n_40,arg__5_n_41,arg__5_n_42,arg__5_n_43,arg__5_n_44,arg__5_n_45,arg__5_n_46,arg__5_n_47,arg__5_n_48,arg__5_n_49,arg__5_n_50,arg__5_n_51,arg__5_n_52,arg__5_n_53}),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,\weights[0] [0:-16]}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_arg__5_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_arg__5_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_arg__5_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(1'b0),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_arg__5_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_arg__5_OVERFLOW_UNCONNECTED),
        .P({NLW_arg__5_P_UNCONNECTED[47:17],arg__5_n_89,NLW_arg__5_P_UNCONNECTED[15:0]}),
        .PATTERNBDETECT(NLW_arg__5_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_arg__5_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT({arg__5_n_106,arg__5_n_107,arg__5_n_108,arg__5_n_109,arg__5_n_110,arg__5_n_111,arg__5_n_112,arg__5_n_113,arg__5_n_114,arg__5_n_115,arg__5_n_116,arg__5_n_117,arg__5_n_118,arg__5_n_119,arg__5_n_120,arg__5_n_121,arg__5_n_122,arg__5_n_123,arg__5_n_124,arg__5_n_125,arg__5_n_126,arg__5_n_127,arg__5_n_128,arg__5_n_129,arg__5_n_130,arg__5_n_131,arg__5_n_132,arg__5_n_133,arg__5_n_134,arg__5_n_135,arg__5_n_136,arg__5_n_137,arg__5_n_138,arg__5_n_139,arg__5_n_140,arg__5_n_141,arg__5_n_142,arg__5_n_143,arg__5_n_144,arg__5_n_145,arg__5_n_146,arg__5_n_147,arg__5_n_148,arg__5_n_149,arg__5_n_150,arg__5_n_151,arg__5_n_152,arg__5_n_153}),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_arg__5_UNDERFLOW_UNCONNECTED));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-10 {cell *THIS*} {string 18x15 4}}" *) 
  DSP48E1 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(0),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("CASCADE"),
    .BCASCREG(0),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    arg__6
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACIN({arg__5_n_24,arg__5_n_25,arg__5_n_26,arg__5_n_27,arg__5_n_28,arg__5_n_29,arg__5_n_30,arg__5_n_31,arg__5_n_32,arg__5_n_33,arg__5_n_34,arg__5_n_35,arg__5_n_36,arg__5_n_37,arg__5_n_38,arg__5_n_39,arg__5_n_40,arg__5_n_41,arg__5_n_42,arg__5_n_43,arg__5_n_44,arg__5_n_45,arg__5_n_46,arg__5_n_47,arg__5_n_48,arg__5_n_49,arg__5_n_50,arg__5_n_51,arg__5_n_52,arg__5_n_53}),
        .ACOUT(NLW_arg__6_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({\weights[0] [15],\weights[0] [15],\weights[0] [15],\weights[0] [15:1]}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_arg__6_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_arg__6_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_arg__6_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(1'b0),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_arg__6_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b1,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_arg__6_OVERFLOW_UNCONNECTED),
        .P({NLW_arg__6_P_UNCONNECTED[47:31],arg__6_n_75,arg__6_n_76,arg__6_n_77,arg__6_n_78,arg__6_n_79,arg__6_n_80,arg__6_n_81,arg__6_n_82,arg__6_n_83,arg__6_n_84,arg__6_n_85,arg__6_n_86,arg__6_n_87,arg__6_n_88,arg__6_n_89,arg__6_n_90,arg__6_n_91,arg__6_n_92,arg__6_n_93,arg__6_n_94,arg__6_n_95,arg__6_n_96,arg__6_n_97,arg__6_n_98,arg__6_n_99,arg__6_n_100,arg__6_n_101,arg__6_n_102,arg__6_n_103,arg__6_n_104,arg__6_n_105}),
        .PATTERNBDETECT(NLW_arg__6_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_arg__6_PATTERNDETECT_UNCONNECTED),
        .PCIN({arg__5_n_106,arg__5_n_107,arg__5_n_108,arg__5_n_109,arg__5_n_110,arg__5_n_111,arg__5_n_112,arg__5_n_113,arg__5_n_114,arg__5_n_115,arg__5_n_116,arg__5_n_117,arg__5_n_118,arg__5_n_119,arg__5_n_120,arg__5_n_121,arg__5_n_122,arg__5_n_123,arg__5_n_124,arg__5_n_125,arg__5_n_126,arg__5_n_127,arg__5_n_128,arg__5_n_129,arg__5_n_130,arg__5_n_131,arg__5_n_132,arg__5_n_133,arg__5_n_134,arg__5_n_135,arg__5_n_136,arg__5_n_137,arg__5_n_138,arg__5_n_139,arg__5_n_140,arg__5_n_141,arg__5_n_142,arg__5_n_143,arg__5_n_144,arg__5_n_145,arg__5_n_146,arg__5_n_147,arg__5_n_148,arg__5_n_149,arg__5_n_150,arg__5_n_151,arg__5_n_152,arg__5_n_153}),
        .PCOUT(NLW_arg__6_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_arg__6_UNDERFLOW_UNCONNECTED));
  CARRY4 \final_OBUF[-13]_inst_i_1 
       (.CI(1'b0),
        .CO({\final_OBUF[-13]_inst_i_1_n_0 ,\NLW_final_OBUF[-13]_inst_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI(l[-13:-16]),
        .O(final[-13:-16]),
        .S({\final_OBUF[-13]_inst_i_3_n_0 ,\final_OBUF[-13]_inst_i_4_n_0 ,\final_OBUF[-13]_inst_i_5_n_0 ,\final_OBUF[-13]_inst_i_6_n_0 }));
  CARRY4 \final_OBUF[-13]_inst_i_11 
       (.CI(1'b0),
        .CO({\final_OBUF[-13]_inst_i_11_n_0 ,\NLW_final_OBUF[-13]_inst_i_11_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({arg__2_n_103,arg__2_n_104,arg__2_n_105,1'b0}),
        .O(to_s6[3:0]),
        .S({\final_OBUF[-13]_inst_i_12_n_0 ,\final_OBUF[-13]_inst_i_13_n_0 ,\final_OBUF[-13]_inst_i_14_n_0 ,arg__1_n_89}));
  LUT2 #(
    .INIT(4'h6)) 
    \final_OBUF[-13]_inst_i_12 
       (.I0(arg__2_n_103),
        .I1(arg_n_103),
        .O(\final_OBUF[-13]_inst_i_12_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \final_OBUF[-13]_inst_i_13 
       (.I0(arg__2_n_104),
        .I1(arg_n_104),
        .O(\final_OBUF[-13]_inst_i_13_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \final_OBUF[-13]_inst_i_14 
       (.I0(arg__2_n_105),
        .I1(arg_n_105),
        .O(\final_OBUF[-13]_inst_i_14_n_0 ));
  CARRY4 \final_OBUF[-13]_inst_i_2 
       (.CI(1'b0),
        .CO({\final_OBUF[-13]_inst_i_2_n_0 ,\NLW_final_OBUF[-13]_inst_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({arg__6_n_103,arg__6_n_104,arg__6_n_105,1'b0}),
        .O(l[-13:-16]),
        .S({\final_OBUF[-13]_inst_i_7_n_0 ,\final_OBUF[-13]_inst_i_8_n_0 ,\final_OBUF[-13]_inst_i_9_n_0 ,arg__5_n_89}));
  LUT2 #(
    .INIT(4'h6)) 
    \final_OBUF[-13]_inst_i_3 
       (.I0(l[-13]),
        .I1(to_s6[3]),
        .O(\final_OBUF[-13]_inst_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \final_OBUF[-13]_inst_i_4 
       (.I0(l[-14]),
        .I1(to_s6[2]),
        .O(\final_OBUF[-13]_inst_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \final_OBUF[-13]_inst_i_5 
       (.I0(l[-15]),
        .I1(to_s6[1]),
        .O(\final_OBUF[-13]_inst_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \final_OBUF[-13]_inst_i_6 
       (.I0(l[-16]),
        .I1(to_s6[0]),
        .O(\final_OBUF[-13]_inst_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \final_OBUF[-13]_inst_i_7 
       (.I0(arg__6_n_103),
        .I1(arg__3_n_103),
        .O(\final_OBUF[-13]_inst_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \final_OBUF[-13]_inst_i_8 
       (.I0(arg__6_n_104),
        .I1(arg__3_n_104),
        .O(\final_OBUF[-13]_inst_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \final_OBUF[-13]_inst_i_9 
       (.I0(arg__6_n_105),
        .I1(arg__3_n_105),
        .O(\final_OBUF[-13]_inst_i_9_n_0 ));
  CARRY4 \final_OBUF[-1]_inst_i_1 
       (.CI(\final_OBUF[-5]_inst_i_1_n_0 ),
        .CO({\final_OBUF[-1]_inst_i_1_n_0 ,\NLW_final_OBUF[-1]_inst_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI(l[-1:-4]),
        .O(final[-1:-4]),
        .S({\final_OBUF[-1]_inst_i_3_n_0 ,\final_OBUF[-1]_inst_i_4_n_0 ,\final_OBUF[-1]_inst_i_5_n_0 ,\final_OBUF[-1]_inst_i_6_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \final_OBUF[-1]_inst_i_10 
       (.I0(arg__6_n_94),
        .I1(arg__3_n_94),
        .O(\final_OBUF[-1]_inst_i_10_n_0 ));
  CARRY4 \final_OBUF[-1]_inst_i_11 
       (.CI(\final_OBUF[-5]_inst_i_11_n_0 ),
        .CO({\final_OBUF[-1]_inst_i_11_n_0 ,\NLW_final_OBUF[-1]_inst_i_11_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({arg__2_n_91,arg__2_n_92,arg__2_n_93,arg__2_n_94}),
        .O(to_s6[15:12]),
        .S({\final_OBUF[-1]_inst_i_12_n_0 ,\final_OBUF[-1]_inst_i_13_n_0 ,\final_OBUF[-1]_inst_i_14_n_0 ,\final_OBUF[-1]_inst_i_15_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \final_OBUF[-1]_inst_i_12 
       (.I0(arg__2_n_91),
        .I1(arg_n_91),
        .O(\final_OBUF[-1]_inst_i_12_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \final_OBUF[-1]_inst_i_13 
       (.I0(arg__2_n_92),
        .I1(arg_n_92),
        .O(\final_OBUF[-1]_inst_i_13_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \final_OBUF[-1]_inst_i_14 
       (.I0(arg__2_n_93),
        .I1(arg_n_93),
        .O(\final_OBUF[-1]_inst_i_14_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \final_OBUF[-1]_inst_i_15 
       (.I0(arg__2_n_94),
        .I1(arg_n_94),
        .O(\final_OBUF[-1]_inst_i_15_n_0 ));
  CARRY4 \final_OBUF[-1]_inst_i_2 
       (.CI(\final_OBUF[-5]_inst_i_2_n_0 ),
        .CO({\final_OBUF[-1]_inst_i_2_n_0 ,\NLW_final_OBUF[-1]_inst_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({arg__6_n_91,arg__6_n_92,arg__6_n_93,arg__6_n_94}),
        .O(l[-1:-4]),
        .S({\final_OBUF[-1]_inst_i_7_n_0 ,\final_OBUF[-1]_inst_i_8_n_0 ,\final_OBUF[-1]_inst_i_9_n_0 ,\final_OBUF[-1]_inst_i_10_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \final_OBUF[-1]_inst_i_3 
       (.I0(l[-1]),
        .I1(to_s6[15]),
        .O(\final_OBUF[-1]_inst_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \final_OBUF[-1]_inst_i_4 
       (.I0(l[-2]),
        .I1(to_s6[14]),
        .O(\final_OBUF[-1]_inst_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \final_OBUF[-1]_inst_i_5 
       (.I0(l[-3]),
        .I1(to_s6[13]),
        .O(\final_OBUF[-1]_inst_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \final_OBUF[-1]_inst_i_6 
       (.I0(l[-4]),
        .I1(to_s6[12]),
        .O(\final_OBUF[-1]_inst_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \final_OBUF[-1]_inst_i_7 
       (.I0(arg__6_n_91),
        .I1(arg__3_n_91),
        .O(\final_OBUF[-1]_inst_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \final_OBUF[-1]_inst_i_8 
       (.I0(arg__6_n_92),
        .I1(arg__3_n_92),
        .O(\final_OBUF[-1]_inst_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \final_OBUF[-1]_inst_i_9 
       (.I0(arg__6_n_93),
        .I1(arg__3_n_93),
        .O(\final_OBUF[-1]_inst_i_9_n_0 ));
  CARRY4 \final_OBUF[-5]_inst_i_1 
       (.CI(\final_OBUF[-9]_inst_i_1_n_0 ),
        .CO({\final_OBUF[-5]_inst_i_1_n_0 ,\NLW_final_OBUF[-5]_inst_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI(l[-5:-8]),
        .O(final[-5:-8]),
        .S({\final_OBUF[-5]_inst_i_3_n_0 ,\final_OBUF[-5]_inst_i_4_n_0 ,\final_OBUF[-5]_inst_i_5_n_0 ,\final_OBUF[-5]_inst_i_6_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \final_OBUF[-5]_inst_i_10 
       (.I0(arg__6_n_98),
        .I1(arg__3_n_98),
        .O(\final_OBUF[-5]_inst_i_10_n_0 ));
  CARRY4 \final_OBUF[-5]_inst_i_11 
       (.CI(\final_OBUF[-9]_inst_i_11_n_0 ),
        .CO({\final_OBUF[-5]_inst_i_11_n_0 ,\NLW_final_OBUF[-5]_inst_i_11_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({arg__2_n_95,arg__2_n_96,arg__2_n_97,arg__2_n_98}),
        .O(to_s6[11:8]),
        .S({\final_OBUF[-5]_inst_i_12_n_0 ,\final_OBUF[-5]_inst_i_13_n_0 ,\final_OBUF[-5]_inst_i_14_n_0 ,\final_OBUF[-5]_inst_i_15_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \final_OBUF[-5]_inst_i_12 
       (.I0(arg__2_n_95),
        .I1(arg_n_95),
        .O(\final_OBUF[-5]_inst_i_12_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \final_OBUF[-5]_inst_i_13 
       (.I0(arg__2_n_96),
        .I1(arg_n_96),
        .O(\final_OBUF[-5]_inst_i_13_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \final_OBUF[-5]_inst_i_14 
       (.I0(arg__2_n_97),
        .I1(arg_n_97),
        .O(\final_OBUF[-5]_inst_i_14_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \final_OBUF[-5]_inst_i_15 
       (.I0(arg__2_n_98),
        .I1(arg_n_98),
        .O(\final_OBUF[-5]_inst_i_15_n_0 ));
  CARRY4 \final_OBUF[-5]_inst_i_2 
       (.CI(\final_OBUF[-9]_inst_i_2_n_0 ),
        .CO({\final_OBUF[-5]_inst_i_2_n_0 ,\NLW_final_OBUF[-5]_inst_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({arg__6_n_95,arg__6_n_96,arg__6_n_97,arg__6_n_98}),
        .O(l[-5:-8]),
        .S({\final_OBUF[-5]_inst_i_7_n_0 ,\final_OBUF[-5]_inst_i_8_n_0 ,\final_OBUF[-5]_inst_i_9_n_0 ,\final_OBUF[-5]_inst_i_10_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \final_OBUF[-5]_inst_i_3 
       (.I0(l[-5]),
        .I1(to_s6[11]),
        .O(\final_OBUF[-5]_inst_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \final_OBUF[-5]_inst_i_4 
       (.I0(l[-6]),
        .I1(to_s6[10]),
        .O(\final_OBUF[-5]_inst_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \final_OBUF[-5]_inst_i_5 
       (.I0(l[-7]),
        .I1(to_s6[9]),
        .O(\final_OBUF[-5]_inst_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \final_OBUF[-5]_inst_i_6 
       (.I0(l[-8]),
        .I1(to_s6[8]),
        .O(\final_OBUF[-5]_inst_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \final_OBUF[-5]_inst_i_7 
       (.I0(arg__6_n_95),
        .I1(arg__3_n_95),
        .O(\final_OBUF[-5]_inst_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \final_OBUF[-5]_inst_i_8 
       (.I0(arg__6_n_96),
        .I1(arg__3_n_96),
        .O(\final_OBUF[-5]_inst_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \final_OBUF[-5]_inst_i_9 
       (.I0(arg__6_n_97),
        .I1(arg__3_n_97),
        .O(\final_OBUF[-5]_inst_i_9_n_0 ));
  CARRY4 \final_OBUF[-9]_inst_i_1 
       (.CI(\final_OBUF[-13]_inst_i_1_n_0 ),
        .CO({\final_OBUF[-9]_inst_i_1_n_0 ,\NLW_final_OBUF[-9]_inst_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI(l[-9:-12]),
        .O(final[-9:-12]),
        .S({\final_OBUF[-9]_inst_i_3_n_0 ,\final_OBUF[-9]_inst_i_4_n_0 ,\final_OBUF[-9]_inst_i_5_n_0 ,\final_OBUF[-9]_inst_i_6_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \final_OBUF[-9]_inst_i_10 
       (.I0(arg__6_n_102),
        .I1(arg__3_n_102),
        .O(\final_OBUF[-9]_inst_i_10_n_0 ));
  CARRY4 \final_OBUF[-9]_inst_i_11 
       (.CI(\final_OBUF[-13]_inst_i_11_n_0 ),
        .CO({\final_OBUF[-9]_inst_i_11_n_0 ,\NLW_final_OBUF[-9]_inst_i_11_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({arg__2_n_99,arg__2_n_100,arg__2_n_101,arg__2_n_102}),
        .O(to_s6[7:4]),
        .S({\final_OBUF[-9]_inst_i_12_n_0 ,\final_OBUF[-9]_inst_i_13_n_0 ,\final_OBUF[-9]_inst_i_14_n_0 ,\final_OBUF[-9]_inst_i_15_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \final_OBUF[-9]_inst_i_12 
       (.I0(arg__2_n_99),
        .I1(arg_n_99),
        .O(\final_OBUF[-9]_inst_i_12_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \final_OBUF[-9]_inst_i_13 
       (.I0(arg__2_n_100),
        .I1(arg_n_100),
        .O(\final_OBUF[-9]_inst_i_13_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \final_OBUF[-9]_inst_i_14 
       (.I0(arg__2_n_101),
        .I1(arg_n_101),
        .O(\final_OBUF[-9]_inst_i_14_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \final_OBUF[-9]_inst_i_15 
       (.I0(arg__2_n_102),
        .I1(arg_n_102),
        .O(\final_OBUF[-9]_inst_i_15_n_0 ));
  CARRY4 \final_OBUF[-9]_inst_i_2 
       (.CI(\final_OBUF[-13]_inst_i_2_n_0 ),
        .CO({\final_OBUF[-9]_inst_i_2_n_0 ,\NLW_final_OBUF[-9]_inst_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({arg__6_n_99,arg__6_n_100,arg__6_n_101,arg__6_n_102}),
        .O(l[-9:-12]),
        .S({\final_OBUF[-9]_inst_i_7_n_0 ,\final_OBUF[-9]_inst_i_8_n_0 ,\final_OBUF[-9]_inst_i_9_n_0 ,\final_OBUF[-9]_inst_i_10_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \final_OBUF[-9]_inst_i_3 
       (.I0(l[-9]),
        .I1(to_s6[7]),
        .O(\final_OBUF[-9]_inst_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \final_OBUF[-9]_inst_i_4 
       (.I0(l[-10]),
        .I1(to_s6[6]),
        .O(\final_OBUF[-9]_inst_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \final_OBUF[-9]_inst_i_5 
       (.I0(l[-11]),
        .I1(to_s6[5]),
        .O(\final_OBUF[-9]_inst_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \final_OBUF[-9]_inst_i_6 
       (.I0(l[-12]),
        .I1(to_s6[4]),
        .O(\final_OBUF[-9]_inst_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \final_OBUF[-9]_inst_i_7 
       (.I0(arg__6_n_99),
        .I1(arg__3_n_99),
        .O(\final_OBUF[-9]_inst_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \final_OBUF[-9]_inst_i_8 
       (.I0(arg__6_n_100),
        .I1(arg__3_n_100),
        .O(\final_OBUF[-9]_inst_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \final_OBUF[-9]_inst_i_9 
       (.I0(arg__6_n_101),
        .I1(arg__3_n_101),
        .O(\final_OBUF[-9]_inst_i_9_n_0 ));
  CARRY4 \final_OBUF[11]_inst_i_1 
       (.CI(\final_OBUF[7]_inst_i_1_n_0 ),
        .CO({\final_OBUF[11]_inst_i_1_n_0 ,\NLW_final_OBUF[11]_inst_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI(l[11:8]),
        .O(final[11:8]),
        .S({\final_OBUF[11]_inst_i_3_n_0 ,\final_OBUF[11]_inst_i_4_n_0 ,\final_OBUF[11]_inst_i_5_n_0 ,\final_OBUF[11]_inst_i_6_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \final_OBUF[11]_inst_i_10 
       (.I0(arg__6_n_82),
        .I1(arg__4_n_99),
        .O(\final_OBUF[11]_inst_i_10_n_0 ));
  CARRY4 \final_OBUF[11]_inst_i_11 
       (.CI(\final_OBUF[7]_inst_i_11_n_0 ),
        .CO({\final_OBUF[11]_inst_i_11_n_0 ,\NLW_final_OBUF[11]_inst_i_11_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({arg__2_n_79,arg__2_n_80,arg__2_n_81,arg__2_n_82}),
        .O(to_s6[27:24]),
        .S({\final_OBUF[11]_inst_i_12_n_0 ,\final_OBUF[11]_inst_i_13_n_0 ,\final_OBUF[11]_inst_i_14_n_0 ,\final_OBUF[11]_inst_i_15_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \final_OBUF[11]_inst_i_12 
       (.I0(arg__2_n_79),
        .I1(arg__0_n_96),
        .O(\final_OBUF[11]_inst_i_12_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \final_OBUF[11]_inst_i_13 
       (.I0(arg__2_n_80),
        .I1(arg__0_n_97),
        .O(\final_OBUF[11]_inst_i_13_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \final_OBUF[11]_inst_i_14 
       (.I0(arg__2_n_81),
        .I1(arg__0_n_98),
        .O(\final_OBUF[11]_inst_i_14_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \final_OBUF[11]_inst_i_15 
       (.I0(arg__2_n_82),
        .I1(arg__0_n_99),
        .O(\final_OBUF[11]_inst_i_15_n_0 ));
  CARRY4 \final_OBUF[11]_inst_i_2 
       (.CI(\final_OBUF[7]_inst_i_2_n_0 ),
        .CO({\final_OBUF[11]_inst_i_2_n_0 ,\NLW_final_OBUF[11]_inst_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({arg__6_n_79,arg__6_n_80,arg__6_n_81,arg__6_n_82}),
        .O(l[11:8]),
        .S({\final_OBUF[11]_inst_i_7_n_0 ,\final_OBUF[11]_inst_i_8_n_0 ,\final_OBUF[11]_inst_i_9_n_0 ,\final_OBUF[11]_inst_i_10_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \final_OBUF[11]_inst_i_3 
       (.I0(l[11]),
        .I1(to_s6[27]),
        .O(\final_OBUF[11]_inst_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \final_OBUF[11]_inst_i_4 
       (.I0(l[10]),
        .I1(to_s6[26]),
        .O(\final_OBUF[11]_inst_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \final_OBUF[11]_inst_i_5 
       (.I0(l[9]),
        .I1(to_s6[25]),
        .O(\final_OBUF[11]_inst_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \final_OBUF[11]_inst_i_6 
       (.I0(l[8]),
        .I1(to_s6[24]),
        .O(\final_OBUF[11]_inst_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \final_OBUF[11]_inst_i_7 
       (.I0(arg__6_n_79),
        .I1(arg__4_n_96),
        .O(\final_OBUF[11]_inst_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \final_OBUF[11]_inst_i_8 
       (.I0(arg__6_n_80),
        .I1(arg__4_n_97),
        .O(\final_OBUF[11]_inst_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \final_OBUF[11]_inst_i_9 
       (.I0(arg__6_n_81),
        .I1(arg__4_n_98),
        .O(\final_OBUF[11]_inst_i_9_n_0 ));
  CARRY4 \final_OBUF[15]_inst_i_1 
       (.CI(\final_OBUF[11]_inst_i_1_n_0 ),
        .CO(\NLW_final_OBUF[15]_inst_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,l[14:12]}),
        .O(final[15:12]),
        .S({\final_OBUF[15]_inst_i_3_n_0 ,\final_OBUF[15]_inst_i_4_n_0 ,\final_OBUF[15]_inst_i_5_n_0 ,\final_OBUF[15]_inst_i_6_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \final_OBUF[15]_inst_i_10 
       (.I0(arg__6_n_78),
        .I1(arg__4_n_95),
        .O(\final_OBUF[15]_inst_i_10_n_0 ));
  CARRY4 \final_OBUF[15]_inst_i_11 
       (.CI(\final_OBUF[11]_inst_i_11_n_0 ),
        .CO(\NLW_final_OBUF[15]_inst_i_11_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,arg__2_n_76,arg__2_n_77,arg__2_n_78}),
        .O(to_s6[31:28]),
        .S({\final_OBUF[15]_inst_i_12_n_0 ,\final_OBUF[15]_inst_i_13_n_0 ,\final_OBUF[15]_inst_i_14_n_0 ,\final_OBUF[15]_inst_i_15_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \final_OBUF[15]_inst_i_12 
       (.I0(arg__2_n_75),
        .I1(arg__0_n_92),
        .O(\final_OBUF[15]_inst_i_12_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \final_OBUF[15]_inst_i_13 
       (.I0(arg__2_n_76),
        .I1(arg__0_n_93),
        .O(\final_OBUF[15]_inst_i_13_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \final_OBUF[15]_inst_i_14 
       (.I0(arg__2_n_77),
        .I1(arg__0_n_94),
        .O(\final_OBUF[15]_inst_i_14_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \final_OBUF[15]_inst_i_15 
       (.I0(arg__2_n_78),
        .I1(arg__0_n_95),
        .O(\final_OBUF[15]_inst_i_15_n_0 ));
  CARRY4 \final_OBUF[15]_inst_i_2 
       (.CI(\final_OBUF[11]_inst_i_2_n_0 ),
        .CO(\NLW_final_OBUF[15]_inst_i_2_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,arg__6_n_76,arg__6_n_77,arg__6_n_78}),
        .O(l[15:12]),
        .S({\final_OBUF[15]_inst_i_7_n_0 ,\final_OBUF[15]_inst_i_8_n_0 ,\final_OBUF[15]_inst_i_9_n_0 ,\final_OBUF[15]_inst_i_10_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \final_OBUF[15]_inst_i_3 
       (.I0(l[15]),
        .I1(to_s6[31]),
        .O(\final_OBUF[15]_inst_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \final_OBUF[15]_inst_i_4 
       (.I0(l[14]),
        .I1(to_s6[30]),
        .O(\final_OBUF[15]_inst_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \final_OBUF[15]_inst_i_5 
       (.I0(l[13]),
        .I1(to_s6[29]),
        .O(\final_OBUF[15]_inst_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \final_OBUF[15]_inst_i_6 
       (.I0(l[12]),
        .I1(to_s6[28]),
        .O(\final_OBUF[15]_inst_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \final_OBUF[15]_inst_i_7 
       (.I0(arg__6_n_75),
        .I1(arg__4_n_92),
        .O(\final_OBUF[15]_inst_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \final_OBUF[15]_inst_i_8 
       (.I0(arg__6_n_76),
        .I1(arg__4_n_93),
        .O(\final_OBUF[15]_inst_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \final_OBUF[15]_inst_i_9 
       (.I0(arg__6_n_77),
        .I1(arg__4_n_94),
        .O(\final_OBUF[15]_inst_i_9_n_0 ));
  CARRY4 \final_OBUF[3]_inst_i_1 
       (.CI(\final_OBUF[-1]_inst_i_1_n_0 ),
        .CO({\final_OBUF[3]_inst_i_1_n_0 ,\NLW_final_OBUF[3]_inst_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI(l[3:0]),
        .O(final[3:0]),
        .S({\final_OBUF[3]_inst_i_3_n_0 ,\final_OBUF[3]_inst_i_4_n_0 ,\final_OBUF[3]_inst_i_5_n_0 ,\final_OBUF[3]_inst_i_6_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \final_OBUF[3]_inst_i_10 
       (.I0(arg__6_n_90),
        .I1(arg__3_n_90),
        .O(\final_OBUF[3]_inst_i_10_n_0 ));
  CARRY4 \final_OBUF[3]_inst_i_11 
       (.CI(\final_OBUF[-1]_inst_i_11_n_0 ),
        .CO({\final_OBUF[3]_inst_i_11_n_0 ,\NLW_final_OBUF[3]_inst_i_11_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({arg__2_n_87,arg__2_n_88,arg__2_n_89,arg__2_n_90}),
        .O(to_s6[19:16]),
        .S({\final_OBUF[3]_inst_i_12_n_0 ,\final_OBUF[3]_inst_i_13_n_0 ,\final_OBUF[3]_inst_i_14_n_0 ,\final_OBUF[3]_inst_i_15_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \final_OBUF[3]_inst_i_12 
       (.I0(arg__2_n_87),
        .I1(arg__0_n_104),
        .O(\final_OBUF[3]_inst_i_12_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \final_OBUF[3]_inst_i_13 
       (.I0(arg__2_n_88),
        .I1(arg__0_n_105),
        .O(\final_OBUF[3]_inst_i_13_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \final_OBUF[3]_inst_i_14 
       (.I0(arg__2_n_89),
        .I1(arg_n_89),
        .O(\final_OBUF[3]_inst_i_14_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \final_OBUF[3]_inst_i_15 
       (.I0(arg__2_n_90),
        .I1(arg_n_90),
        .O(\final_OBUF[3]_inst_i_15_n_0 ));
  CARRY4 \final_OBUF[3]_inst_i_2 
       (.CI(\final_OBUF[-1]_inst_i_2_n_0 ),
        .CO({\final_OBUF[3]_inst_i_2_n_0 ,\NLW_final_OBUF[3]_inst_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({arg__6_n_87,arg__6_n_88,arg__6_n_89,arg__6_n_90}),
        .O(l[3:0]),
        .S({\final_OBUF[3]_inst_i_7_n_0 ,\final_OBUF[3]_inst_i_8_n_0 ,\final_OBUF[3]_inst_i_9_n_0 ,\final_OBUF[3]_inst_i_10_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \final_OBUF[3]_inst_i_3 
       (.I0(l[3]),
        .I1(to_s6[19]),
        .O(\final_OBUF[3]_inst_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \final_OBUF[3]_inst_i_4 
       (.I0(l[2]),
        .I1(to_s6[18]),
        .O(\final_OBUF[3]_inst_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \final_OBUF[3]_inst_i_5 
       (.I0(l[1]),
        .I1(to_s6[17]),
        .O(\final_OBUF[3]_inst_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \final_OBUF[3]_inst_i_6 
       (.I0(l[0]),
        .I1(to_s6[16]),
        .O(\final_OBUF[3]_inst_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \final_OBUF[3]_inst_i_7 
       (.I0(arg__6_n_87),
        .I1(arg__4_n_104),
        .O(\final_OBUF[3]_inst_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \final_OBUF[3]_inst_i_8 
       (.I0(arg__6_n_88),
        .I1(arg__4_n_105),
        .O(\final_OBUF[3]_inst_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \final_OBUF[3]_inst_i_9 
       (.I0(arg__6_n_89),
        .I1(arg__3_n_89),
        .O(\final_OBUF[3]_inst_i_9_n_0 ));
  CARRY4 \final_OBUF[7]_inst_i_1 
       (.CI(\final_OBUF[3]_inst_i_1_n_0 ),
        .CO({\final_OBUF[7]_inst_i_1_n_0 ,\NLW_final_OBUF[7]_inst_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI(l[7:4]),
        .O(final[7:4]),
        .S({\final_OBUF[7]_inst_i_3_n_0 ,\final_OBUF[7]_inst_i_4_n_0 ,\final_OBUF[7]_inst_i_5_n_0 ,\final_OBUF[7]_inst_i_6_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \final_OBUF[7]_inst_i_10 
       (.I0(arg__6_n_86),
        .I1(arg__4_n_103),
        .O(\final_OBUF[7]_inst_i_10_n_0 ));
  CARRY4 \final_OBUF[7]_inst_i_11 
       (.CI(\final_OBUF[3]_inst_i_11_n_0 ),
        .CO({\final_OBUF[7]_inst_i_11_n_0 ,\NLW_final_OBUF[7]_inst_i_11_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({arg__2_n_83,arg__2_n_84,arg__2_n_85,arg__2_n_86}),
        .O(to_s6[23:20]),
        .S({\final_OBUF[7]_inst_i_12_n_0 ,\final_OBUF[7]_inst_i_13_n_0 ,\final_OBUF[7]_inst_i_14_n_0 ,\final_OBUF[7]_inst_i_15_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \final_OBUF[7]_inst_i_12 
       (.I0(arg__2_n_83),
        .I1(arg__0_n_100),
        .O(\final_OBUF[7]_inst_i_12_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \final_OBUF[7]_inst_i_13 
       (.I0(arg__2_n_84),
        .I1(arg__0_n_101),
        .O(\final_OBUF[7]_inst_i_13_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \final_OBUF[7]_inst_i_14 
       (.I0(arg__2_n_85),
        .I1(arg__0_n_102),
        .O(\final_OBUF[7]_inst_i_14_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \final_OBUF[7]_inst_i_15 
       (.I0(arg__2_n_86),
        .I1(arg__0_n_103),
        .O(\final_OBUF[7]_inst_i_15_n_0 ));
  CARRY4 \final_OBUF[7]_inst_i_2 
       (.CI(\final_OBUF[3]_inst_i_2_n_0 ),
        .CO({\final_OBUF[7]_inst_i_2_n_0 ,\NLW_final_OBUF[7]_inst_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({arg__6_n_83,arg__6_n_84,arg__6_n_85,arg__6_n_86}),
        .O(l[7:4]),
        .S({\final_OBUF[7]_inst_i_7_n_0 ,\final_OBUF[7]_inst_i_8_n_0 ,\final_OBUF[7]_inst_i_9_n_0 ,\final_OBUF[7]_inst_i_10_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \final_OBUF[7]_inst_i_3 
       (.I0(l[7]),
        .I1(to_s6[23]),
        .O(\final_OBUF[7]_inst_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \final_OBUF[7]_inst_i_4 
       (.I0(l[6]),
        .I1(to_s6[22]),
        .O(\final_OBUF[7]_inst_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \final_OBUF[7]_inst_i_5 
       (.I0(l[5]),
        .I1(to_s6[21]),
        .O(\final_OBUF[7]_inst_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \final_OBUF[7]_inst_i_6 
       (.I0(l[4]),
        .I1(to_s6[20]),
        .O(\final_OBUF[7]_inst_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \final_OBUF[7]_inst_i_7 
       (.I0(arg__6_n_83),
        .I1(arg__4_n_100),
        .O(\final_OBUF[7]_inst_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \final_OBUF[7]_inst_i_8 
       (.I0(arg__6_n_84),
        .I1(arg__4_n_101),
        .O(\final_OBUF[7]_inst_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \final_OBUF[7]_inst_i_9 
       (.I0(arg__6_n_85),
        .I1(arg__4_n_102),
        .O(\final_OBUF[7]_inst_i_9_n_0 ));
endmodule

(* ECO_CHECKSUM = "117358ee" *) 
(* NotValidForBitStream *)
module neuron
   (\input[1] ,
    \input[0] ,
    \weights[1] ,
    \weights[0] ,
    final);
  input [15:-16]\input[1] ;
  input [15:-16]\input[0] ;
  input [15:-16]\weights[1] ;
  input [15:-16]\weights[0] ;
  output [15:-16]final;

  wire arg_i_10__0_n_0;
  wire arg_i_10__1_n_0;
  wire arg_i_10__2_n_0;
  wire arg_i_10__3_n_0;
  wire arg_i_10__4_n_0;
  wire arg_i_10_n_0;
  wire arg_i_11__0_n_0;
  wire arg_i_11__1_n_0;
  wire arg_i_11__2_n_0;
  wire arg_i_11__3_n_0;
  wire arg_i_11__4_n_0;
  wire arg_i_11_n_0;
  wire arg_i_12__0_n_0;
  wire arg_i_12__1_n_0;
  wire arg_i_12__2_n_0;
  wire arg_i_12__3_n_0;
  wire arg_i_12__4_n_0;
  wire arg_i_12_n_0;
  wire arg_i_13__0_n_0;
  wire arg_i_13__1_n_0;
  wire arg_i_13__2_n_0;
  wire arg_i_13__3_n_0;
  wire arg_i_13__4_n_0;
  wire arg_i_13_n_0;
  wire arg_i_14__0_n_0;
  wire arg_i_14__1_n_0;
  wire arg_i_14__2_n_0;
  wire arg_i_14__3_n_0;
  wire arg_i_14__4_n_0;
  wire arg_i_14_n_0;
  wire arg_i_15__0_n_0;
  wire arg_i_15__1_n_0;
  wire arg_i_15__2_n_0;
  wire arg_i_15__3_n_0;
  wire arg_i_15__4_n_0;
  wire arg_i_15_n_0;
  wire arg_i_16__0_n_0;
  wire arg_i_16__1_n_0;
  wire arg_i_16__2_n_0;
  wire arg_i_16_n_0;
  wire arg_i_17__0_n_0;
  wire arg_i_17__1_n_0;
  wire arg_i_17__2_n_0;
  wire arg_i_17_n_0;
  wire arg_i_18__0_n_0;
  wire arg_i_18_n_0;
  wire arg_i_19__0_n_0;
  wire arg_i_19_n_0;
  wire arg_i_1__0_n_0;
  wire arg_i_1__1_n_0;
  wire arg_i_1__2_n_0;
  wire arg_i_1__3_n_0;
  wire arg_i_1__4_n_0;
  wire arg_i_1_n_0;
  wire arg_i_20__0_n_0;
  wire arg_i_20_n_0;
  wire arg_i_21__0_n_0;
  wire arg_i_21_n_0;
  wire arg_i_22__0_n_0;
  wire arg_i_22_n_0;
  wire arg_i_23__0_n_0;
  wire arg_i_23_n_0;
  wire arg_i_24__0_n_0;
  wire arg_i_24_n_0;
  wire arg_i_25__0_n_0;
  wire arg_i_25_n_0;
  wire arg_i_26__0_n_0;
  wire arg_i_26_n_0;
  wire arg_i_27__0_n_0;
  wire arg_i_27_n_0;
  wire arg_i_28__0_n_0;
  wire arg_i_28_n_0;
  wire arg_i_29__0_n_0;
  wire arg_i_29_n_0;
  wire arg_i_2__0_n_0;
  wire arg_i_2__1_n_0;
  wire arg_i_2__2_n_0;
  wire arg_i_2__3_n_0;
  wire arg_i_2__4_n_0;
  wire arg_i_2_n_0;
  wire arg_i_30__0_n_0;
  wire arg_i_30_n_0;
  wire arg_i_31__0_n_0;
  wire arg_i_31_n_0;
  wire arg_i_32__0_n_0;
  wire arg_i_32_n_0;
  wire arg_i_3__0_n_0;
  wire arg_i_3__1_n_0;
  wire arg_i_3__2_n_0;
  wire arg_i_3__3_n_0;
  wire arg_i_3__4_n_0;
  wire arg_i_3_n_0;
  wire arg_i_4__0_n_0;
  wire arg_i_4__1_n_0;
  wire arg_i_4__2_n_0;
  wire arg_i_4__3_n_0;
  wire arg_i_4__4_n_0;
  wire arg_i_4_n_0;
  wire arg_i_5__0_n_0;
  wire arg_i_5__1_n_0;
  wire arg_i_5__2_n_0;
  wire arg_i_5__3_n_0;
  wire arg_i_5__4_n_0;
  wire arg_i_5_n_0;
  wire arg_i_6__0_n_0;
  wire arg_i_6__1_n_0;
  wire arg_i_6__2_n_0;
  wire arg_i_6__3_n_0;
  wire arg_i_6__4_n_0;
  wire arg_i_6_n_0;
  wire arg_i_7__0_n_0;
  wire arg_i_7__1_n_0;
  wire arg_i_7__2_n_0;
  wire arg_i_7__3_n_0;
  wire arg_i_7__4_n_0;
  wire arg_i_7_n_0;
  wire arg_i_8__0_n_0;
  wire arg_i_8__1_n_0;
  wire arg_i_8__2_n_0;
  wire arg_i_8__3_n_0;
  wire arg_i_8__4_n_0;
  wire arg_i_8_n_0;
  wire arg_i_9__0_n_0;
  wire arg_i_9__1_n_0;
  wire arg_i_9__2_n_0;
  wire arg_i_9__3_n_0;
  wire arg_i_9__4_n_0;
  wire arg_i_9_n_0;
  wire [15:-16]final;
  wire [15:-16]final_OBUF;
  wire [15:-16]\input[0] ;
  wire [15:-16]\input[1] ;
  wire [15:-16]\weights[0] ;
  wire [15:-16]\weights[1] ;

initial begin
 $sdf_annotate("MAC_tb_time_impl.sdf",,,,"tool_control");
end
  MAC MC
       (.A({arg_i_1__0_n_0,arg_i_2__0_n_0,arg_i_3__0_n_0,arg_i_4__0_n_0,arg_i_5__0_n_0,arg_i_6__0_n_0,arg_i_7__0_n_0,arg_i_8__0_n_0,arg_i_9__0_n_0,arg_i_10__0_n_0,arg_i_11__0_n_0,arg_i_12__0_n_0,arg_i_13__0_n_0,arg_i_14__0_n_0,arg_i_15__0_n_0,arg_i_16_n_0,arg_i_17_n_0}),
        .B({arg_i_1_n_0,arg_i_2_n_0,arg_i_3_n_0,arg_i_4_n_0,arg_i_5_n_0,arg_i_6_n_0,arg_i_7_n_0,arg_i_8_n_0,arg_i_9_n_0,arg_i_10_n_0,arg_i_11_n_0,arg_i_12_n_0,arg_i_13_n_0,arg_i_14_n_0,arg_i_15_n_0}),
        .final(final_OBUF),
        .\input[0][0] ({arg_i_1__2_n_0,arg_i_2__2_n_0,arg_i_3__2_n_0,arg_i_4__2_n_0,arg_i_5__2_n_0,arg_i_6__2_n_0,arg_i_7__2_n_0,arg_i_8__2_n_0,arg_i_9__2_n_0,arg_i_10__2_n_0,arg_i_11__2_n_0,arg_i_12__2_n_0,arg_i_13__2_n_0,arg_i_14__2_n_0,arg_i_15__2_n_0,arg_i_16__0_n_0,arg_i_17__0_n_0}),
        .\input[0][15] ({arg_i_1__1_n_0,arg_i_2__1_n_0,arg_i_3__1_n_0,arg_i_4__1_n_0,arg_i_5__1_n_0,arg_i_6__1_n_0,arg_i_7__1_n_0,arg_i_8__1_n_0,arg_i_9__1_n_0,arg_i_10__1_n_0,arg_i_11__1_n_0,arg_i_12__1_n_0,arg_i_13__1_n_0,arg_i_14__1_n_0,arg_i_15__1_n_0}),
        .\weights[0] ({arg_i_1__4_n_0,arg_i_2__4_n_0,arg_i_3__4_n_0,arg_i_4__4_n_0,arg_i_5__4_n_0,arg_i_6__4_n_0,arg_i_7__4_n_0,arg_i_8__4_n_0,arg_i_9__4_n_0,arg_i_10__4_n_0,arg_i_11__4_n_0,arg_i_12__4_n_0,arg_i_13__4_n_0,arg_i_14__4_n_0,arg_i_15__4_n_0,arg_i_16__2_n_0,arg_i_17__2_n_0,arg_i_18__0_n_0,arg_i_19__0_n_0,arg_i_20__0_n_0,arg_i_21__0_n_0,arg_i_22__0_n_0,arg_i_23__0_n_0,arg_i_24__0_n_0,arg_i_25__0_n_0,arg_i_26__0_n_0,arg_i_27__0_n_0,arg_i_28__0_n_0,arg_i_29__0_n_0,arg_i_30__0_n_0,arg_i_31__0_n_0,arg_i_32__0_n_0}),
        .\weights[1] ({arg_i_1__3_n_0,arg_i_2__3_n_0,arg_i_3__3_n_0,arg_i_4__3_n_0,arg_i_5__3_n_0,arg_i_6__3_n_0,arg_i_7__3_n_0,arg_i_8__3_n_0,arg_i_9__3_n_0,arg_i_10__3_n_0,arg_i_11__3_n_0,arg_i_12__3_n_0,arg_i_13__3_n_0,arg_i_14__3_n_0,arg_i_15__3_n_0,arg_i_16__1_n_0,arg_i_17__1_n_0,arg_i_18_n_0,arg_i_19_n_0,arg_i_20_n_0,arg_i_21_n_0,arg_i_22_n_0,arg_i_23_n_0,arg_i_24_n_0,arg_i_25_n_0,arg_i_26_n_0,arg_i_27_n_0,arg_i_28_n_0,arg_i_29_n_0,arg_i_30_n_0,arg_i_31_n_0,arg_i_32_n_0}));
  IBUF arg_i_1
       (.I(\input[1] [15]),
        .O(arg_i_1_n_0));
  IBUF arg_i_10
       (.I(\input[1] [6]),
        .O(arg_i_10_n_0));
  IBUF arg_i_10__0
       (.I(\input[1] [-9]),
        .O(arg_i_10__0_n_0));
  IBUF arg_i_10__1
       (.I(\input[0] [6]),
        .O(arg_i_10__1_n_0));
  IBUF arg_i_10__2
       (.I(\input[0] [-9]),
        .O(arg_i_10__2_n_0));
  IBUF arg_i_10__3
       (.I(\weights[1] [6]),
        .O(arg_i_10__3_n_0));
  IBUF arg_i_10__4
       (.I(\weights[0] [6]),
        .O(arg_i_10__4_n_0));
  IBUF arg_i_11
       (.I(\input[1] [5]),
        .O(arg_i_11_n_0));
  IBUF arg_i_11__0
       (.I(\input[1] [-10]),
        .O(arg_i_11__0_n_0));
  IBUF arg_i_11__1
       (.I(\input[0] [5]),
        .O(arg_i_11__1_n_0));
  IBUF arg_i_11__2
       (.I(\input[0] [-10]),
        .O(arg_i_11__2_n_0));
  IBUF arg_i_11__3
       (.I(\weights[1] [5]),
        .O(arg_i_11__3_n_0));
  IBUF arg_i_11__4
       (.I(\weights[0] [5]),
        .O(arg_i_11__4_n_0));
  IBUF arg_i_12
       (.I(\input[1] [4]),
        .O(arg_i_12_n_0));
  IBUF arg_i_12__0
       (.I(\input[1] [-11]),
        .O(arg_i_12__0_n_0));
  IBUF arg_i_12__1
       (.I(\input[0] [4]),
        .O(arg_i_12__1_n_0));
  IBUF arg_i_12__2
       (.I(\input[0] [-11]),
        .O(arg_i_12__2_n_0));
  IBUF arg_i_12__3
       (.I(\weights[1] [4]),
        .O(arg_i_12__3_n_0));
  IBUF arg_i_12__4
       (.I(\weights[0] [4]),
        .O(arg_i_12__4_n_0));
  IBUF arg_i_13
       (.I(\input[1] [3]),
        .O(arg_i_13_n_0));
  IBUF arg_i_13__0
       (.I(\input[1] [-12]),
        .O(arg_i_13__0_n_0));
  IBUF arg_i_13__1
       (.I(\input[0] [3]),
        .O(arg_i_13__1_n_0));
  IBUF arg_i_13__2
       (.I(\input[0] [-12]),
        .O(arg_i_13__2_n_0));
  IBUF arg_i_13__3
       (.I(\weights[1] [3]),
        .O(arg_i_13__3_n_0));
  IBUF arg_i_13__4
       (.I(\weights[0] [3]),
        .O(arg_i_13__4_n_0));
  IBUF arg_i_14
       (.I(\input[1] [2]),
        .O(arg_i_14_n_0));
  IBUF arg_i_14__0
       (.I(\input[1] [-13]),
        .O(arg_i_14__0_n_0));
  IBUF arg_i_14__1
       (.I(\input[0] [2]),
        .O(arg_i_14__1_n_0));
  IBUF arg_i_14__2
       (.I(\input[0] [-13]),
        .O(arg_i_14__2_n_0));
  IBUF arg_i_14__3
       (.I(\weights[1] [2]),
        .O(arg_i_14__3_n_0));
  IBUF arg_i_14__4
       (.I(\weights[0] [2]),
        .O(arg_i_14__4_n_0));
  IBUF arg_i_15
       (.I(\input[1] [1]),
        .O(arg_i_15_n_0));
  IBUF arg_i_15__0
       (.I(\input[1] [-14]),
        .O(arg_i_15__0_n_0));
  IBUF arg_i_15__1
       (.I(\input[0] [1]),
        .O(arg_i_15__1_n_0));
  IBUF arg_i_15__2
       (.I(\input[0] [-14]),
        .O(arg_i_15__2_n_0));
  IBUF arg_i_15__3
       (.I(\weights[1] [1]),
        .O(arg_i_15__3_n_0));
  IBUF arg_i_15__4
       (.I(\weights[0] [1]),
        .O(arg_i_15__4_n_0));
  IBUF arg_i_16
       (.I(\input[1] [-15]),
        .O(arg_i_16_n_0));
  IBUF arg_i_16__0
       (.I(\input[0] [-15]),
        .O(arg_i_16__0_n_0));
  IBUF arg_i_16__1
       (.I(\weights[1] [0]),
        .O(arg_i_16__1_n_0));
  IBUF arg_i_16__2
       (.I(\weights[0] [0]),
        .O(arg_i_16__2_n_0));
  IBUF arg_i_17
       (.I(\input[1] [-16]),
        .O(arg_i_17_n_0));
  IBUF arg_i_17__0
       (.I(\input[0] [-16]),
        .O(arg_i_17__0_n_0));
  IBUF arg_i_17__1
       (.I(\weights[1] [-1]),
        .O(arg_i_17__1_n_0));
  IBUF arg_i_17__2
       (.I(\weights[0] [-1]),
        .O(arg_i_17__2_n_0));
  IBUF arg_i_18
       (.I(\weights[1] [-2]),
        .O(arg_i_18_n_0));
  IBUF arg_i_18__0
       (.I(\weights[0] [-2]),
        .O(arg_i_18__0_n_0));
  IBUF arg_i_19
       (.I(\weights[1] [-3]),
        .O(arg_i_19_n_0));
  IBUF arg_i_19__0
       (.I(\weights[0] [-3]),
        .O(arg_i_19__0_n_0));
  IBUF arg_i_1__0
       (.I(\input[1] [0]),
        .O(arg_i_1__0_n_0));
  IBUF arg_i_1__1
       (.I(\input[0] [15]),
        .O(arg_i_1__1_n_0));
  IBUF arg_i_1__2
       (.I(\input[0] [0]),
        .O(arg_i_1__2_n_0));
  IBUF arg_i_1__3
       (.I(\weights[1] [15]),
        .O(arg_i_1__3_n_0));
  IBUF arg_i_1__4
       (.I(\weights[0] [15]),
        .O(arg_i_1__4_n_0));
  IBUF arg_i_2
       (.I(\input[1] [14]),
        .O(arg_i_2_n_0));
  IBUF arg_i_20
       (.I(\weights[1] [-4]),
        .O(arg_i_20_n_0));
  IBUF arg_i_20__0
       (.I(\weights[0] [-4]),
        .O(arg_i_20__0_n_0));
  IBUF arg_i_21
       (.I(\weights[1] [-5]),
        .O(arg_i_21_n_0));
  IBUF arg_i_21__0
       (.I(\weights[0] [-5]),
        .O(arg_i_21__0_n_0));
  IBUF arg_i_22
       (.I(\weights[1] [-6]),
        .O(arg_i_22_n_0));
  IBUF arg_i_22__0
       (.I(\weights[0] [-6]),
        .O(arg_i_22__0_n_0));
  IBUF arg_i_23
       (.I(\weights[1] [-7]),
        .O(arg_i_23_n_0));
  IBUF arg_i_23__0
       (.I(\weights[0] [-7]),
        .O(arg_i_23__0_n_0));
  IBUF arg_i_24
       (.I(\weights[1] [-8]),
        .O(arg_i_24_n_0));
  IBUF arg_i_24__0
       (.I(\weights[0] [-8]),
        .O(arg_i_24__0_n_0));
  IBUF arg_i_25
       (.I(\weights[1] [-9]),
        .O(arg_i_25_n_0));
  IBUF arg_i_25__0
       (.I(\weights[0] [-9]),
        .O(arg_i_25__0_n_0));
  IBUF arg_i_26
       (.I(\weights[1] [-10]),
        .O(arg_i_26_n_0));
  IBUF arg_i_26__0
       (.I(\weights[0] [-10]),
        .O(arg_i_26__0_n_0));
  IBUF arg_i_27
       (.I(\weights[1] [-11]),
        .O(arg_i_27_n_0));
  IBUF arg_i_27__0
       (.I(\weights[0] [-11]),
        .O(arg_i_27__0_n_0));
  IBUF arg_i_28
       (.I(\weights[1] [-12]),
        .O(arg_i_28_n_0));
  IBUF arg_i_28__0
       (.I(\weights[0] [-12]),
        .O(arg_i_28__0_n_0));
  IBUF arg_i_29
       (.I(\weights[1] [-13]),
        .O(arg_i_29_n_0));
  IBUF arg_i_29__0
       (.I(\weights[0] [-13]),
        .O(arg_i_29__0_n_0));
  IBUF arg_i_2__0
       (.I(\input[1] [-1]),
        .O(arg_i_2__0_n_0));
  IBUF arg_i_2__1
       (.I(\input[0] [14]),
        .O(arg_i_2__1_n_0));
  IBUF arg_i_2__2
       (.I(\input[0] [-1]),
        .O(arg_i_2__2_n_0));
  IBUF arg_i_2__3
       (.I(\weights[1] [14]),
        .O(arg_i_2__3_n_0));
  IBUF arg_i_2__4
       (.I(\weights[0] [14]),
        .O(arg_i_2__4_n_0));
  IBUF arg_i_3
       (.I(\input[1] [13]),
        .O(arg_i_3_n_0));
  IBUF arg_i_30
       (.I(\weights[1] [-14]),
        .O(arg_i_30_n_0));
  IBUF arg_i_30__0
       (.I(\weights[0] [-14]),
        .O(arg_i_30__0_n_0));
  IBUF arg_i_31
       (.I(\weights[1] [-15]),
        .O(arg_i_31_n_0));
  IBUF arg_i_31__0
       (.I(\weights[0] [-15]),
        .O(arg_i_31__0_n_0));
  IBUF arg_i_32
       (.I(\weights[1] [-16]),
        .O(arg_i_32_n_0));
  IBUF arg_i_32__0
       (.I(\weights[0] [-16]),
        .O(arg_i_32__0_n_0));
  IBUF arg_i_3__0
       (.I(\input[1] [-2]),
        .O(arg_i_3__0_n_0));
  IBUF arg_i_3__1
       (.I(\input[0] [13]),
        .O(arg_i_3__1_n_0));
  IBUF arg_i_3__2
       (.I(\input[0] [-2]),
        .O(arg_i_3__2_n_0));
  IBUF arg_i_3__3
       (.I(\weights[1] [13]),
        .O(arg_i_3__3_n_0));
  IBUF arg_i_3__4
       (.I(\weights[0] [13]),
        .O(arg_i_3__4_n_0));
  IBUF arg_i_4
       (.I(\input[1] [12]),
        .O(arg_i_4_n_0));
  IBUF arg_i_4__0
       (.I(\input[1] [-3]),
        .O(arg_i_4__0_n_0));
  IBUF arg_i_4__1
       (.I(\input[0] [12]),
        .O(arg_i_4__1_n_0));
  IBUF arg_i_4__2
       (.I(\input[0] [-3]),
        .O(arg_i_4__2_n_0));
  IBUF arg_i_4__3
       (.I(\weights[1] [12]),
        .O(arg_i_4__3_n_0));
  IBUF arg_i_4__4
       (.I(\weights[0] [12]),
        .O(arg_i_4__4_n_0));
  IBUF arg_i_5
       (.I(\input[1] [11]),
        .O(arg_i_5_n_0));
  IBUF arg_i_5__0
       (.I(\input[1] [-4]),
        .O(arg_i_5__0_n_0));
  IBUF arg_i_5__1
       (.I(\input[0] [11]),
        .O(arg_i_5__1_n_0));
  IBUF arg_i_5__2
       (.I(\input[0] [-4]),
        .O(arg_i_5__2_n_0));
  IBUF arg_i_5__3
       (.I(\weights[1] [11]),
        .O(arg_i_5__3_n_0));
  IBUF arg_i_5__4
       (.I(\weights[0] [11]),
        .O(arg_i_5__4_n_0));
  IBUF arg_i_6
       (.I(\input[1] [10]),
        .O(arg_i_6_n_0));
  IBUF arg_i_6__0
       (.I(\input[1] [-5]),
        .O(arg_i_6__0_n_0));
  IBUF arg_i_6__1
       (.I(\input[0] [10]),
        .O(arg_i_6__1_n_0));
  IBUF arg_i_6__2
       (.I(\input[0] [-5]),
        .O(arg_i_6__2_n_0));
  IBUF arg_i_6__3
       (.I(\weights[1] [10]),
        .O(arg_i_6__3_n_0));
  IBUF arg_i_6__4
       (.I(\weights[0] [10]),
        .O(arg_i_6__4_n_0));
  IBUF arg_i_7
       (.I(\input[1] [9]),
        .O(arg_i_7_n_0));
  IBUF arg_i_7__0
       (.I(\input[1] [-6]),
        .O(arg_i_7__0_n_0));
  IBUF arg_i_7__1
       (.I(\input[0] [9]),
        .O(arg_i_7__1_n_0));
  IBUF arg_i_7__2
       (.I(\input[0] [-6]),
        .O(arg_i_7__2_n_0));
  IBUF arg_i_7__3
       (.I(\weights[1] [9]),
        .O(arg_i_7__3_n_0));
  IBUF arg_i_7__4
       (.I(\weights[0] [9]),
        .O(arg_i_7__4_n_0));
  IBUF arg_i_8
       (.I(\input[1] [8]),
        .O(arg_i_8_n_0));
  IBUF arg_i_8__0
       (.I(\input[1] [-7]),
        .O(arg_i_8__0_n_0));
  IBUF arg_i_8__1
       (.I(\input[0] [8]),
        .O(arg_i_8__1_n_0));
  IBUF arg_i_8__2
       (.I(\input[0] [-7]),
        .O(arg_i_8__2_n_0));
  IBUF arg_i_8__3
       (.I(\weights[1] [8]),
        .O(arg_i_8__3_n_0));
  IBUF arg_i_8__4
       (.I(\weights[0] [8]),
        .O(arg_i_8__4_n_0));
  IBUF arg_i_9
       (.I(\input[1] [7]),
        .O(arg_i_9_n_0));
  IBUF arg_i_9__0
       (.I(\input[1] [-8]),
        .O(arg_i_9__0_n_0));
  IBUF arg_i_9__1
       (.I(\input[0] [7]),
        .O(arg_i_9__1_n_0));
  IBUF arg_i_9__2
       (.I(\input[0] [-8]),
        .O(arg_i_9__2_n_0));
  IBUF arg_i_9__3
       (.I(\weights[1] [7]),
        .O(arg_i_9__3_n_0));
  IBUF arg_i_9__4
       (.I(\weights[0] [7]),
        .O(arg_i_9__4_n_0));
  OBUF \final_OBUF[-10]_inst 
       (.I(final_OBUF[-10]),
        .O(final[-10]));
  OBUF \final_OBUF[-11]_inst 
       (.I(final_OBUF[-11]),
        .O(final[-11]));
  OBUF \final_OBUF[-12]_inst 
       (.I(final_OBUF[-12]),
        .O(final[-12]));
  OBUF \final_OBUF[-13]_inst 
       (.I(final_OBUF[-13]),
        .O(final[-13]));
  OBUF \final_OBUF[-14]_inst 
       (.I(final_OBUF[-14]),
        .O(final[-14]));
  OBUF \final_OBUF[-15]_inst 
       (.I(final_OBUF[-15]),
        .O(final[-15]));
  OBUF \final_OBUF[-16]_inst 
       (.I(final_OBUF[-16]),
        .O(final[-16]));
  OBUF \final_OBUF[-1]_inst 
       (.I(final_OBUF[-1]),
        .O(final[-1]));
  OBUF \final_OBUF[-2]_inst 
       (.I(final_OBUF[-2]),
        .O(final[-2]));
  OBUF \final_OBUF[-3]_inst 
       (.I(final_OBUF[-3]),
        .O(final[-3]));
  OBUF \final_OBUF[-4]_inst 
       (.I(final_OBUF[-4]),
        .O(final[-4]));
  OBUF \final_OBUF[-5]_inst 
       (.I(final_OBUF[-5]),
        .O(final[-5]));
  OBUF \final_OBUF[-6]_inst 
       (.I(final_OBUF[-6]),
        .O(final[-6]));
  OBUF \final_OBUF[-7]_inst 
       (.I(final_OBUF[-7]),
        .O(final[-7]));
  OBUF \final_OBUF[-8]_inst 
       (.I(final_OBUF[-8]),
        .O(final[-8]));
  OBUF \final_OBUF[-9]_inst 
       (.I(final_OBUF[-9]),
        .O(final[-9]));
  OBUF \final_OBUF[0]_inst 
       (.I(final_OBUF[0]),
        .O(final[0]));
  OBUF \final_OBUF[10]_inst 
       (.I(final_OBUF[10]),
        .O(final[10]));
  OBUF \final_OBUF[11]_inst 
       (.I(final_OBUF[11]),
        .O(final[11]));
  OBUF \final_OBUF[12]_inst 
       (.I(final_OBUF[12]),
        .O(final[12]));
  OBUF \final_OBUF[13]_inst 
       (.I(final_OBUF[13]),
        .O(final[13]));
  OBUF \final_OBUF[14]_inst 
       (.I(final_OBUF[14]),
        .O(final[14]));
  OBUF \final_OBUF[15]_inst 
       (.I(final_OBUF[15]),
        .O(final[15]));
  OBUF \final_OBUF[1]_inst 
       (.I(final_OBUF[1]),
        .O(final[1]));
  OBUF \final_OBUF[2]_inst 
       (.I(final_OBUF[2]),
        .O(final[2]));
  OBUF \final_OBUF[3]_inst 
       (.I(final_OBUF[3]),
        .O(final[3]));
  OBUF \final_OBUF[4]_inst 
       (.I(final_OBUF[4]),
        .O(final[4]));
  OBUF \final_OBUF[5]_inst 
       (.I(final_OBUF[5]),
        .O(final[5]));
  OBUF \final_OBUF[6]_inst 
       (.I(final_OBUF[6]),
        .O(final[6]));
  OBUF \final_OBUF[7]_inst 
       (.I(final_OBUF[7]),
        .O(final[7]));
  OBUF \final_OBUF[8]_inst 
       (.I(final_OBUF[8]),
        .O(final[8]));
  OBUF \final_OBUF[9]_inst 
       (.I(final_OBUF[9]),
        .O(final[9]));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
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

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

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

endmodule
`endif
