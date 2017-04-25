// Copyright 1986-2015 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2015.4 (lin64) Build 1412921 Wed Nov 18 09:44:32 MST 2015
// Date        : Sun Apr  2 21:07:53 2017
// Host        : nlandy-MacBookPro running 64-bit Ubuntu 14.04.5 LTS
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               /home/nlandy/Documents/Reconfig/Project/neural_network/neural_network.sim/sim_1/synth/timing/MAC_tb_time_synth.v
// Design      : neuron
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

module MAC
   (final,
    input1_IBUF,
    weight1,
    input0_IBUF,
    weight0);
  output [31:0]final;
  input [31:0]input1_IBUF;
  input [31:0]weight1;
  input [31:0]input0_IBUF;
  input [31:0]weight0;

  wire arg__0_n_100;
  wire arg__0_n_101;
  wire arg__0_n_102;
  wire arg__0_n_103;
  wire arg__0_n_104;
  wire arg__0_n_105;
  wire arg__0_n_58;
  wire arg__0_n_59;
  wire arg__0_n_60;
  wire arg__0_n_61;
  wire arg__0_n_62;
  wire arg__0_n_63;
  wire arg__0_n_64;
  wire arg__0_n_65;
  wire arg__0_n_66;
  wire arg__0_n_67;
  wire arg__0_n_68;
  wire arg__0_n_69;
  wire arg__0_n_70;
  wire arg__0_n_71;
  wire arg__0_n_72;
  wire arg__0_n_73;
  wire arg__0_n_74;
  wire arg__0_n_75;
  wire arg__0_n_76;
  wire arg__0_n_77;
  wire arg__0_n_78;
  wire arg__0_n_79;
  wire arg__0_n_80;
  wire arg__0_n_81;
  wire arg__0_n_82;
  wire arg__0_n_83;
  wire arg__0_n_84;
  wire arg__0_n_85;
  wire arg__0_n_86;
  wire arg__0_n_87;
  wire arg__0_n_88;
  wire arg__0_n_89;
  wire arg__0_n_90;
  wire arg__0_n_91;
  wire arg__0_n_92;
  wire arg__0_n_93;
  wire arg__0_n_94;
  wire arg__0_n_95;
  wire arg__0_n_96;
  wire arg__0_n_97;
  wire arg__0_n_98;
  wire arg__0_n_99;
  wire arg__1_n_100;
  wire arg__1_n_101;
  wire arg__1_n_102;
  wire arg__1_n_103;
  wire arg__1_n_104;
  wire arg__1_n_105;
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
  wire arg__1_n_58;
  wire arg__1_n_59;
  wire arg__1_n_60;
  wire arg__1_n_61;
  wire arg__1_n_62;
  wire arg__1_n_63;
  wire arg__1_n_64;
  wire arg__1_n_65;
  wire arg__1_n_66;
  wire arg__1_n_67;
  wire arg__1_n_68;
  wire arg__1_n_69;
  wire arg__1_n_70;
  wire arg__1_n_71;
  wire arg__1_n_72;
  wire arg__1_n_73;
  wire arg__1_n_74;
  wire arg__1_n_75;
  wire arg__1_n_76;
  wire arg__1_n_77;
  wire arg__1_n_78;
  wire arg__1_n_79;
  wire arg__1_n_80;
  wire arg__1_n_81;
  wire arg__1_n_82;
  wire arg__1_n_83;
  wire arg__1_n_84;
  wire arg__1_n_85;
  wire arg__1_n_86;
  wire arg__1_n_87;
  wire arg__1_n_88;
  wire arg__1_n_89;
  wire arg__1_n_90;
  wire arg__1_n_91;
  wire arg__1_n_92;
  wire arg__1_n_93;
  wire arg__1_n_94;
  wire arg__1_n_95;
  wire arg__1_n_96;
  wire arg__1_n_97;
  wire arg__1_n_98;
  wire arg__1_n_99;
  wire arg__2_n_100;
  wire arg__2_n_101;
  wire arg__2_n_102;
  wire arg__2_n_103;
  wire arg__2_n_104;
  wire arg__2_n_105;
  wire arg__2_n_58;
  wire arg__2_n_59;
  wire arg__2_n_60;
  wire arg__2_n_61;
  wire arg__2_n_62;
  wire arg__2_n_63;
  wire arg__2_n_64;
  wire arg__2_n_65;
  wire arg__2_n_66;
  wire arg__2_n_67;
  wire arg__2_n_68;
  wire arg__2_n_69;
  wire arg__2_n_70;
  wire arg__2_n_71;
  wire arg__2_n_72;
  wire arg__2_n_73;
  wire arg__2_n_74;
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
  wire arg__3_n_58;
  wire arg__3_n_59;
  wire arg__3_n_60;
  wire arg__3_n_61;
  wire arg__3_n_62;
  wire arg__3_n_63;
  wire arg__3_n_64;
  wire arg__3_n_65;
  wire arg__3_n_66;
  wire arg__3_n_67;
  wire arg__3_n_68;
  wire arg__3_n_69;
  wire arg__3_n_70;
  wire arg__3_n_71;
  wire arg__3_n_72;
  wire arg__3_n_73;
  wire arg__3_n_74;
  wire arg__3_n_75;
  wire arg__3_n_76;
  wire arg__3_n_77;
  wire arg__3_n_78;
  wire arg__3_n_79;
  wire arg__3_n_80;
  wire arg__3_n_81;
  wire arg__3_n_82;
  wire arg__3_n_83;
  wire arg__3_n_84;
  wire arg__3_n_85;
  wire arg__3_n_86;
  wire arg__3_n_87;
  wire arg__3_n_88;
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
  wire arg__4_n_58;
  wire arg__4_n_59;
  wire arg__4_n_60;
  wire arg__4_n_61;
  wire arg__4_n_62;
  wire arg__4_n_63;
  wire arg__4_n_64;
  wire arg__4_n_65;
  wire arg__4_n_66;
  wire arg__4_n_67;
  wire arg__4_n_68;
  wire arg__4_n_69;
  wire arg__4_n_70;
  wire arg__4_n_71;
  wire arg__4_n_72;
  wire arg__4_n_73;
  wire arg__4_n_74;
  wire arg__4_n_75;
  wire arg__4_n_76;
  wire arg__4_n_77;
  wire arg__4_n_78;
  wire arg__4_n_79;
  wire arg__4_n_80;
  wire arg__4_n_81;
  wire arg__4_n_82;
  wire arg__4_n_83;
  wire arg__4_n_84;
  wire arg__4_n_85;
  wire arg__4_n_86;
  wire arg__4_n_87;
  wire arg__4_n_88;
  wire arg__4_n_89;
  wire arg__4_n_90;
  wire arg__4_n_91;
  wire arg__4_n_92;
  wire arg__4_n_93;
  wire arg__4_n_94;
  wire arg__4_n_95;
  wire arg__4_n_96;
  wire arg__4_n_97;
  wire arg__4_n_98;
  wire arg__4_n_99;
  wire arg__5_n_100;
  wire arg__5_n_101;
  wire arg__5_n_102;
  wire arg__5_n_103;
  wire arg__5_n_104;
  wire arg__5_n_105;
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
  wire arg__5_n_58;
  wire arg__5_n_59;
  wire arg__5_n_60;
  wire arg__5_n_61;
  wire arg__5_n_62;
  wire arg__5_n_63;
  wire arg__5_n_64;
  wire arg__5_n_65;
  wire arg__5_n_66;
  wire arg__5_n_67;
  wire arg__5_n_68;
  wire arg__5_n_69;
  wire arg__5_n_70;
  wire arg__5_n_71;
  wire arg__5_n_72;
  wire arg__5_n_73;
  wire arg__5_n_74;
  wire arg__5_n_75;
  wire arg__5_n_76;
  wire arg__5_n_77;
  wire arg__5_n_78;
  wire arg__5_n_79;
  wire arg__5_n_80;
  wire arg__5_n_81;
  wire arg__5_n_82;
  wire arg__5_n_83;
  wire arg__5_n_84;
  wire arg__5_n_85;
  wire arg__5_n_86;
  wire arg__5_n_87;
  wire arg__5_n_88;
  wire arg__5_n_89;
  wire arg__5_n_90;
  wire arg__5_n_91;
  wire arg__5_n_92;
  wire arg__5_n_93;
  wire arg__5_n_94;
  wire arg__5_n_95;
  wire arg__5_n_96;
  wire arg__5_n_97;
  wire arg__5_n_98;
  wire arg__5_n_99;
  wire arg__6_n_100;
  wire arg__6_n_101;
  wire arg__6_n_102;
  wire arg__6_n_103;
  wire arg__6_n_104;
  wire arg__6_n_105;
  wire arg__6_n_58;
  wire arg__6_n_59;
  wire arg__6_n_60;
  wire arg__6_n_61;
  wire arg__6_n_62;
  wire arg__6_n_63;
  wire arg__6_n_64;
  wire arg__6_n_65;
  wire arg__6_n_66;
  wire arg__6_n_67;
  wire arg__6_n_68;
  wire arg__6_n_69;
  wire arg__6_n_70;
  wire arg__6_n_71;
  wire arg__6_n_72;
  wire arg__6_n_73;
  wire arg__6_n_74;
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
  wire arg_n_58;
  wire arg_n_59;
  wire arg_n_60;
  wire arg_n_61;
  wire arg_n_62;
  wire arg_n_63;
  wire arg_n_64;
  wire arg_n_65;
  wire arg_n_66;
  wire arg_n_67;
  wire arg_n_68;
  wire arg_n_69;
  wire arg_n_70;
  wire arg_n_71;
  wire arg_n_72;
  wire arg_n_73;
  wire arg_n_74;
  wire arg_n_75;
  wire arg_n_76;
  wire arg_n_77;
  wire arg_n_78;
  wire arg_n_79;
  wire arg_n_80;
  wire arg_n_81;
  wire arg_n_82;
  wire arg_n_83;
  wire arg_n_84;
  wire arg_n_85;
  wire arg_n_86;
  wire arg_n_87;
  wire arg_n_88;
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
  wire [31:0]final;
  wire \final_OBUF[11]_inst_i_10_n_0 ;
  wire \final_OBUF[11]_inst_i_11_n_0 ;
  wire \final_OBUF[11]_inst_i_11_n_1 ;
  wire \final_OBUF[11]_inst_i_11_n_2 ;
  wire \final_OBUF[11]_inst_i_11_n_3 ;
  wire \final_OBUF[11]_inst_i_12_n_0 ;
  wire \final_OBUF[11]_inst_i_13_n_0 ;
  wire \final_OBUF[11]_inst_i_14_n_0 ;
  wire \final_OBUF[11]_inst_i_15_n_0 ;
  wire \final_OBUF[11]_inst_i_1_n_0 ;
  wire \final_OBUF[11]_inst_i_1_n_1 ;
  wire \final_OBUF[11]_inst_i_1_n_2 ;
  wire \final_OBUF[11]_inst_i_1_n_3 ;
  wire \final_OBUF[11]_inst_i_2_n_0 ;
  wire \final_OBUF[11]_inst_i_2_n_1 ;
  wire \final_OBUF[11]_inst_i_2_n_2 ;
  wire \final_OBUF[11]_inst_i_2_n_3 ;
  wire \final_OBUF[11]_inst_i_3_n_0 ;
  wire \final_OBUF[11]_inst_i_4_n_0 ;
  wire \final_OBUF[11]_inst_i_5_n_0 ;
  wire \final_OBUF[11]_inst_i_6_n_0 ;
  wire \final_OBUF[11]_inst_i_7_n_0 ;
  wire \final_OBUF[11]_inst_i_8_n_0 ;
  wire \final_OBUF[11]_inst_i_9_n_0 ;
  wire \final_OBUF[15]_inst_i_10_n_0 ;
  wire \final_OBUF[15]_inst_i_11_n_0 ;
  wire \final_OBUF[15]_inst_i_11_n_1 ;
  wire \final_OBUF[15]_inst_i_11_n_2 ;
  wire \final_OBUF[15]_inst_i_11_n_3 ;
  wire \final_OBUF[15]_inst_i_12_n_0 ;
  wire \final_OBUF[15]_inst_i_13_n_0 ;
  wire \final_OBUF[15]_inst_i_14_n_0 ;
  wire \final_OBUF[15]_inst_i_15_n_0 ;
  wire \final_OBUF[15]_inst_i_1_n_0 ;
  wire \final_OBUF[15]_inst_i_1_n_1 ;
  wire \final_OBUF[15]_inst_i_1_n_2 ;
  wire \final_OBUF[15]_inst_i_1_n_3 ;
  wire \final_OBUF[15]_inst_i_2_n_0 ;
  wire \final_OBUF[15]_inst_i_2_n_1 ;
  wire \final_OBUF[15]_inst_i_2_n_2 ;
  wire \final_OBUF[15]_inst_i_2_n_3 ;
  wire \final_OBUF[15]_inst_i_3_n_0 ;
  wire \final_OBUF[15]_inst_i_4_n_0 ;
  wire \final_OBUF[15]_inst_i_5_n_0 ;
  wire \final_OBUF[15]_inst_i_6_n_0 ;
  wire \final_OBUF[15]_inst_i_7_n_0 ;
  wire \final_OBUF[15]_inst_i_8_n_0 ;
  wire \final_OBUF[15]_inst_i_9_n_0 ;
  wire \final_OBUF[19]_inst_i_10_n_0 ;
  wire \final_OBUF[19]_inst_i_11_n_0 ;
  wire \final_OBUF[19]_inst_i_11_n_1 ;
  wire \final_OBUF[19]_inst_i_11_n_2 ;
  wire \final_OBUF[19]_inst_i_11_n_3 ;
  wire \final_OBUF[19]_inst_i_12_n_0 ;
  wire \final_OBUF[19]_inst_i_13_n_0 ;
  wire \final_OBUF[19]_inst_i_14_n_0 ;
  wire \final_OBUF[19]_inst_i_15_n_0 ;
  wire \final_OBUF[19]_inst_i_1_n_0 ;
  wire \final_OBUF[19]_inst_i_1_n_1 ;
  wire \final_OBUF[19]_inst_i_1_n_2 ;
  wire \final_OBUF[19]_inst_i_1_n_3 ;
  wire \final_OBUF[19]_inst_i_2_n_0 ;
  wire \final_OBUF[19]_inst_i_2_n_1 ;
  wire \final_OBUF[19]_inst_i_2_n_2 ;
  wire \final_OBUF[19]_inst_i_2_n_3 ;
  wire \final_OBUF[19]_inst_i_3_n_0 ;
  wire \final_OBUF[19]_inst_i_4_n_0 ;
  wire \final_OBUF[19]_inst_i_5_n_0 ;
  wire \final_OBUF[19]_inst_i_6_n_0 ;
  wire \final_OBUF[19]_inst_i_7_n_0 ;
  wire \final_OBUF[19]_inst_i_8_n_0 ;
  wire \final_OBUF[19]_inst_i_9_n_0 ;
  wire \final_OBUF[23]_inst_i_10_n_0 ;
  wire \final_OBUF[23]_inst_i_11_n_0 ;
  wire \final_OBUF[23]_inst_i_11_n_1 ;
  wire \final_OBUF[23]_inst_i_11_n_2 ;
  wire \final_OBUF[23]_inst_i_11_n_3 ;
  wire \final_OBUF[23]_inst_i_12_n_0 ;
  wire \final_OBUF[23]_inst_i_13_n_0 ;
  wire \final_OBUF[23]_inst_i_14_n_0 ;
  wire \final_OBUF[23]_inst_i_15_n_0 ;
  wire \final_OBUF[23]_inst_i_1_n_0 ;
  wire \final_OBUF[23]_inst_i_1_n_1 ;
  wire \final_OBUF[23]_inst_i_1_n_2 ;
  wire \final_OBUF[23]_inst_i_1_n_3 ;
  wire \final_OBUF[23]_inst_i_2_n_0 ;
  wire \final_OBUF[23]_inst_i_2_n_1 ;
  wire \final_OBUF[23]_inst_i_2_n_2 ;
  wire \final_OBUF[23]_inst_i_2_n_3 ;
  wire \final_OBUF[23]_inst_i_3_n_0 ;
  wire \final_OBUF[23]_inst_i_4_n_0 ;
  wire \final_OBUF[23]_inst_i_5_n_0 ;
  wire \final_OBUF[23]_inst_i_6_n_0 ;
  wire \final_OBUF[23]_inst_i_7_n_0 ;
  wire \final_OBUF[23]_inst_i_8_n_0 ;
  wire \final_OBUF[23]_inst_i_9_n_0 ;
  wire \final_OBUF[27]_inst_i_10_n_0 ;
  wire \final_OBUF[27]_inst_i_11_n_0 ;
  wire \final_OBUF[27]_inst_i_11_n_1 ;
  wire \final_OBUF[27]_inst_i_11_n_2 ;
  wire \final_OBUF[27]_inst_i_11_n_3 ;
  wire \final_OBUF[27]_inst_i_12_n_0 ;
  wire \final_OBUF[27]_inst_i_13_n_0 ;
  wire \final_OBUF[27]_inst_i_14_n_0 ;
  wire \final_OBUF[27]_inst_i_15_n_0 ;
  wire \final_OBUF[27]_inst_i_1_n_0 ;
  wire \final_OBUF[27]_inst_i_1_n_1 ;
  wire \final_OBUF[27]_inst_i_1_n_2 ;
  wire \final_OBUF[27]_inst_i_1_n_3 ;
  wire \final_OBUF[27]_inst_i_2_n_0 ;
  wire \final_OBUF[27]_inst_i_2_n_1 ;
  wire \final_OBUF[27]_inst_i_2_n_2 ;
  wire \final_OBUF[27]_inst_i_2_n_3 ;
  wire \final_OBUF[27]_inst_i_3_n_0 ;
  wire \final_OBUF[27]_inst_i_4_n_0 ;
  wire \final_OBUF[27]_inst_i_5_n_0 ;
  wire \final_OBUF[27]_inst_i_6_n_0 ;
  wire \final_OBUF[27]_inst_i_7_n_0 ;
  wire \final_OBUF[27]_inst_i_8_n_0 ;
  wire \final_OBUF[27]_inst_i_9_n_0 ;
  wire \final_OBUF[31]_inst_i_10_n_0 ;
  wire \final_OBUF[31]_inst_i_11_n_1 ;
  wire \final_OBUF[31]_inst_i_11_n_2 ;
  wire \final_OBUF[31]_inst_i_11_n_3 ;
  wire \final_OBUF[31]_inst_i_12_n_0 ;
  wire \final_OBUF[31]_inst_i_13_n_0 ;
  wire \final_OBUF[31]_inst_i_14_n_0 ;
  wire \final_OBUF[31]_inst_i_15_n_0 ;
  wire \final_OBUF[31]_inst_i_1_n_1 ;
  wire \final_OBUF[31]_inst_i_1_n_2 ;
  wire \final_OBUF[31]_inst_i_1_n_3 ;
  wire \final_OBUF[31]_inst_i_2_n_1 ;
  wire \final_OBUF[31]_inst_i_2_n_2 ;
  wire \final_OBUF[31]_inst_i_2_n_3 ;
  wire \final_OBUF[31]_inst_i_3_n_0 ;
  wire \final_OBUF[31]_inst_i_4_n_0 ;
  wire \final_OBUF[31]_inst_i_5_n_0 ;
  wire \final_OBUF[31]_inst_i_6_n_0 ;
  wire \final_OBUF[31]_inst_i_7_n_0 ;
  wire \final_OBUF[31]_inst_i_8_n_0 ;
  wire \final_OBUF[31]_inst_i_9_n_0 ;
  wire \final_OBUF[3]_inst_i_10_n_0 ;
  wire \final_OBUF[3]_inst_i_11_n_0 ;
  wire \final_OBUF[3]_inst_i_11_n_1 ;
  wire \final_OBUF[3]_inst_i_11_n_2 ;
  wire \final_OBUF[3]_inst_i_11_n_3 ;
  wire \final_OBUF[3]_inst_i_12_n_0 ;
  wire \final_OBUF[3]_inst_i_13_n_0 ;
  wire \final_OBUF[3]_inst_i_14_n_0 ;
  wire \final_OBUF[3]_inst_i_15_n_0 ;
  wire \final_OBUF[3]_inst_i_1_n_0 ;
  wire \final_OBUF[3]_inst_i_1_n_1 ;
  wire \final_OBUF[3]_inst_i_1_n_2 ;
  wire \final_OBUF[3]_inst_i_1_n_3 ;
  wire \final_OBUF[3]_inst_i_2_n_0 ;
  wire \final_OBUF[3]_inst_i_2_n_1 ;
  wire \final_OBUF[3]_inst_i_2_n_2 ;
  wire \final_OBUF[3]_inst_i_2_n_3 ;
  wire \final_OBUF[3]_inst_i_3_n_0 ;
  wire \final_OBUF[3]_inst_i_4_n_0 ;
  wire \final_OBUF[3]_inst_i_5_n_0 ;
  wire \final_OBUF[3]_inst_i_6_n_0 ;
  wire \final_OBUF[3]_inst_i_7_n_0 ;
  wire \final_OBUF[3]_inst_i_8_n_0 ;
  wire \final_OBUF[3]_inst_i_9_n_0 ;
  wire \final_OBUF[7]_inst_i_10_n_0 ;
  wire \final_OBUF[7]_inst_i_11_n_0 ;
  wire \final_OBUF[7]_inst_i_11_n_1 ;
  wire \final_OBUF[7]_inst_i_11_n_2 ;
  wire \final_OBUF[7]_inst_i_11_n_3 ;
  wire \final_OBUF[7]_inst_i_12_n_0 ;
  wire \final_OBUF[7]_inst_i_13_n_0 ;
  wire \final_OBUF[7]_inst_i_14_n_0 ;
  wire \final_OBUF[7]_inst_i_15_n_0 ;
  wire \final_OBUF[7]_inst_i_1_n_0 ;
  wire \final_OBUF[7]_inst_i_1_n_1 ;
  wire \final_OBUF[7]_inst_i_1_n_2 ;
  wire \final_OBUF[7]_inst_i_1_n_3 ;
  wire \final_OBUF[7]_inst_i_2_n_0 ;
  wire \final_OBUF[7]_inst_i_2_n_1 ;
  wire \final_OBUF[7]_inst_i_2_n_2 ;
  wire \final_OBUF[7]_inst_i_2_n_3 ;
  wire \final_OBUF[7]_inst_i_3_n_0 ;
  wire \final_OBUF[7]_inst_i_4_n_0 ;
  wire \final_OBUF[7]_inst_i_5_n_0 ;
  wire \final_OBUF[7]_inst_i_6_n_0 ;
  wire \final_OBUF[7]_inst_i_7_n_0 ;
  wire \final_OBUF[7]_inst_i_8_n_0 ;
  wire \final_OBUF[7]_inst_i_9_n_0 ;
  wire [31:0]input0_IBUF;
  wire [31:0]input1_IBUF;
  wire [15:-16]l;
  wire [31:0]to_s6;
  wire [31:0]weight0;
  wire [31:0]weight1;
  wire NLW_arg_CARRYCASCOUT_UNCONNECTED;
  wire NLW_arg_MULTSIGNOUT_UNCONNECTED;
  wire NLW_arg_OVERFLOW_UNCONNECTED;
  wire NLW_arg_PATTERNBDETECT_UNCONNECTED;
  wire NLW_arg_PATTERNDETECT_UNCONNECTED;
  wire NLW_arg_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_arg_ACOUT_UNCONNECTED;
  wire [17:0]NLW_arg_BCOUT_UNCONNECTED;
  wire [3:0]NLW_arg_CARRYOUT_UNCONNECTED;
  wire NLW_arg__0_CARRYCASCOUT_UNCONNECTED;
  wire NLW_arg__0_MULTSIGNOUT_UNCONNECTED;
  wire NLW_arg__0_OVERFLOW_UNCONNECTED;
  wire NLW_arg__0_PATTERNBDETECT_UNCONNECTED;
  wire NLW_arg__0_PATTERNDETECT_UNCONNECTED;
  wire NLW_arg__0_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_arg__0_ACOUT_UNCONNECTED;
  wire [17:0]NLW_arg__0_BCOUT_UNCONNECTED;
  wire [3:0]NLW_arg__0_CARRYOUT_UNCONNECTED;
  wire [47:0]NLW_arg__0_PCOUT_UNCONNECTED;
  wire NLW_arg__1_CARRYCASCOUT_UNCONNECTED;
  wire NLW_arg__1_MULTSIGNOUT_UNCONNECTED;
  wire NLW_arg__1_OVERFLOW_UNCONNECTED;
  wire NLW_arg__1_PATTERNBDETECT_UNCONNECTED;
  wire NLW_arg__1_PATTERNDETECT_UNCONNECTED;
  wire NLW_arg__1_UNDERFLOW_UNCONNECTED;
  wire [17:0]NLW_arg__1_BCOUT_UNCONNECTED;
  wire [3:0]NLW_arg__1_CARRYOUT_UNCONNECTED;
  wire NLW_arg__2_CARRYCASCOUT_UNCONNECTED;
  wire NLW_arg__2_MULTSIGNOUT_UNCONNECTED;
  wire NLW_arg__2_OVERFLOW_UNCONNECTED;
  wire NLW_arg__2_PATTERNBDETECT_UNCONNECTED;
  wire NLW_arg__2_PATTERNDETECT_UNCONNECTED;
  wire NLW_arg__2_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_arg__2_ACOUT_UNCONNECTED;
  wire [17:0]NLW_arg__2_BCOUT_UNCONNECTED;
  wire [3:0]NLW_arg__2_CARRYOUT_UNCONNECTED;
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
  wire NLW_arg__4_CARRYCASCOUT_UNCONNECTED;
  wire NLW_arg__4_MULTSIGNOUT_UNCONNECTED;
  wire NLW_arg__4_OVERFLOW_UNCONNECTED;
  wire NLW_arg__4_PATTERNBDETECT_UNCONNECTED;
  wire NLW_arg__4_PATTERNDETECT_UNCONNECTED;
  wire NLW_arg__4_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_arg__4_ACOUT_UNCONNECTED;
  wire [17:0]NLW_arg__4_BCOUT_UNCONNECTED;
  wire [3:0]NLW_arg__4_CARRYOUT_UNCONNECTED;
  wire [47:0]NLW_arg__4_PCOUT_UNCONNECTED;
  wire NLW_arg__5_CARRYCASCOUT_UNCONNECTED;
  wire NLW_arg__5_MULTSIGNOUT_UNCONNECTED;
  wire NLW_arg__5_OVERFLOW_UNCONNECTED;
  wire NLW_arg__5_PATTERNBDETECT_UNCONNECTED;
  wire NLW_arg__5_PATTERNDETECT_UNCONNECTED;
  wire NLW_arg__5_UNDERFLOW_UNCONNECTED;
  wire [17:0]NLW_arg__5_BCOUT_UNCONNECTED;
  wire [3:0]NLW_arg__5_CARRYOUT_UNCONNECTED;
  wire NLW_arg__6_CARRYCASCOUT_UNCONNECTED;
  wire NLW_arg__6_MULTSIGNOUT_UNCONNECTED;
  wire NLW_arg__6_OVERFLOW_UNCONNECTED;
  wire NLW_arg__6_PATTERNBDETECT_UNCONNECTED;
  wire NLW_arg__6_PATTERNDETECT_UNCONNECTED;
  wire NLW_arg__6_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_arg__6_ACOUT_UNCONNECTED;
  wire [17:0]NLW_arg__6_BCOUT_UNCONNECTED;
  wire [3:0]NLW_arg__6_CARRYOUT_UNCONNECTED;
  wire [47:0]NLW_arg__6_PCOUT_UNCONNECTED;
  wire [3:3]\NLW_final_OBUF[31]_inst_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_final_OBUF[31]_inst_i_11_CO_UNCONNECTED ;
  wire [3:3]\NLW_final_OBUF[31]_inst_i_2_CO_UNCONNECTED ;

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
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,weight1[16:0]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_arg_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({input1_IBUF[31],input1_IBUF[31],input1_IBUF[31],input1_IBUF[31:17]}),
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
        .P({arg_n_58,arg_n_59,arg_n_60,arg_n_61,arg_n_62,arg_n_63,arg_n_64,arg_n_65,arg_n_66,arg_n_67,arg_n_68,arg_n_69,arg_n_70,arg_n_71,arg_n_72,arg_n_73,arg_n_74,arg_n_75,arg_n_76,arg_n_77,arg_n_78,arg_n_79,arg_n_80,arg_n_81,arg_n_82,arg_n_83,arg_n_84,arg_n_85,arg_n_86,arg_n_87,arg_n_88,arg_n_89,arg_n_90,arg_n_91,arg_n_92,arg_n_93,arg_n_94,arg_n_95,arg_n_96,arg_n_97,arg_n_98,arg_n_99,arg_n_100,arg_n_101,arg_n_102,arg_n_103,arg_n_104,arg_n_105}),
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
       (.A({input1_IBUF[31],input1_IBUF[31],input1_IBUF[31],input1_IBUF[31],input1_IBUF[31],input1_IBUF[31],input1_IBUF[31],input1_IBUF[31],input1_IBUF[31],input1_IBUF[31],input1_IBUF[31],input1_IBUF[31],input1_IBUF[31],input1_IBUF[31],input1_IBUF[31],input1_IBUF[31:17]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_arg__0_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({weight1[31],weight1[31],weight1[31],weight1[31:17]}),
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
        .P({arg__0_n_58,arg__0_n_59,arg__0_n_60,arg__0_n_61,arg__0_n_62,arg__0_n_63,arg__0_n_64,arg__0_n_65,arg__0_n_66,arg__0_n_67,arg__0_n_68,arg__0_n_69,arg__0_n_70,arg__0_n_71,arg__0_n_72,arg__0_n_73,arg__0_n_74,arg__0_n_75,arg__0_n_76,arg__0_n_77,arg__0_n_78,arg__0_n_79,arg__0_n_80,arg__0_n_81,arg__0_n_82,arg__0_n_83,arg__0_n_84,arg__0_n_85,arg__0_n_86,arg__0_n_87,arg__0_n_88,arg__0_n_89,arg__0_n_90,arg__0_n_91,arg__0_n_92,arg__0_n_93,arg__0_n_94,arg__0_n_95,arg__0_n_96,arg__0_n_97,arg__0_n_98,arg__0_n_99,arg__0_n_100,arg__0_n_101,arg__0_n_102,arg__0_n_103,arg__0_n_104,arg__0_n_105}),
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
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,input1_IBUF[16:0]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT({arg__1_n_24,arg__1_n_25,arg__1_n_26,arg__1_n_27,arg__1_n_28,arg__1_n_29,arg__1_n_30,arg__1_n_31,arg__1_n_32,arg__1_n_33,arg__1_n_34,arg__1_n_35,arg__1_n_36,arg__1_n_37,arg__1_n_38,arg__1_n_39,arg__1_n_40,arg__1_n_41,arg__1_n_42,arg__1_n_43,arg__1_n_44,arg__1_n_45,arg__1_n_46,arg__1_n_47,arg__1_n_48,arg__1_n_49,arg__1_n_50,arg__1_n_51,arg__1_n_52,arg__1_n_53}),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,weight1[16:0]}),
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
        .P({arg__1_n_58,arg__1_n_59,arg__1_n_60,arg__1_n_61,arg__1_n_62,arg__1_n_63,arg__1_n_64,arg__1_n_65,arg__1_n_66,arg__1_n_67,arg__1_n_68,arg__1_n_69,arg__1_n_70,arg__1_n_71,arg__1_n_72,arg__1_n_73,arg__1_n_74,arg__1_n_75,arg__1_n_76,arg__1_n_77,arg__1_n_78,arg__1_n_79,arg__1_n_80,arg__1_n_81,arg__1_n_82,arg__1_n_83,arg__1_n_84,arg__1_n_85,arg__1_n_86,arg__1_n_87,arg__1_n_88,arg__1_n_89,arg__1_n_90,arg__1_n_91,arg__1_n_92,arg__1_n_93,arg__1_n_94,arg__1_n_95,arg__1_n_96,arg__1_n_97,arg__1_n_98,arg__1_n_99,arg__1_n_100,arg__1_n_101,arg__1_n_102,arg__1_n_103,arg__1_n_104,arg__1_n_105}),
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
        .B({weight1[31],weight1[31],weight1[31],weight1[31:17]}),
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
        .P({arg__2_n_58,arg__2_n_59,arg__2_n_60,arg__2_n_61,arg__2_n_62,arg__2_n_63,arg__2_n_64,arg__2_n_65,arg__2_n_66,arg__2_n_67,arg__2_n_68,arg__2_n_69,arg__2_n_70,arg__2_n_71,arg__2_n_72,arg__2_n_73,arg__2_n_74,arg__2_n_75,arg__2_n_76,arg__2_n_77,arg__2_n_78,arg__2_n_79,arg__2_n_80,arg__2_n_81,arg__2_n_82,arg__2_n_83,arg__2_n_84,arg__2_n_85,arg__2_n_86,arg__2_n_87,arg__2_n_88,arg__2_n_89,arg__2_n_90,arg__2_n_91,arg__2_n_92,arg__2_n_93,arg__2_n_94,arg__2_n_95,arg__2_n_96,arg__2_n_97,arg__2_n_98,arg__2_n_99,arg__2_n_100,arg__2_n_101,arg__2_n_102,arg__2_n_103,arg__2_n_104,arg__2_n_105}),
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
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,weight0[16:0]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_arg__3_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({input0_IBUF[31],input0_IBUF[31],input0_IBUF[31],input0_IBUF[31:17]}),
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
        .P({arg__3_n_58,arg__3_n_59,arg__3_n_60,arg__3_n_61,arg__3_n_62,arg__3_n_63,arg__3_n_64,arg__3_n_65,arg__3_n_66,arg__3_n_67,arg__3_n_68,arg__3_n_69,arg__3_n_70,arg__3_n_71,arg__3_n_72,arg__3_n_73,arg__3_n_74,arg__3_n_75,arg__3_n_76,arg__3_n_77,arg__3_n_78,arg__3_n_79,arg__3_n_80,arg__3_n_81,arg__3_n_82,arg__3_n_83,arg__3_n_84,arg__3_n_85,arg__3_n_86,arg__3_n_87,arg__3_n_88,arg__3_n_89,arg__3_n_90,arg__3_n_91,arg__3_n_92,arg__3_n_93,arg__3_n_94,arg__3_n_95,arg__3_n_96,arg__3_n_97,arg__3_n_98,arg__3_n_99,arg__3_n_100,arg__3_n_101,arg__3_n_102,arg__3_n_103,arg__3_n_104,arg__3_n_105}),
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
       (.A({input0_IBUF[31],input0_IBUF[31],input0_IBUF[31],input0_IBUF[31],input0_IBUF[31],input0_IBUF[31],input0_IBUF[31],input0_IBUF[31],input0_IBUF[31],input0_IBUF[31],input0_IBUF[31],input0_IBUF[31],input0_IBUF[31],input0_IBUF[31],input0_IBUF[31],input0_IBUF[31:17]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_arg__4_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({weight0[31],weight0[31],weight0[31],weight0[31:17]}),
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
        .P({arg__4_n_58,arg__4_n_59,arg__4_n_60,arg__4_n_61,arg__4_n_62,arg__4_n_63,arg__4_n_64,arg__4_n_65,arg__4_n_66,arg__4_n_67,arg__4_n_68,arg__4_n_69,arg__4_n_70,arg__4_n_71,arg__4_n_72,arg__4_n_73,arg__4_n_74,arg__4_n_75,arg__4_n_76,arg__4_n_77,arg__4_n_78,arg__4_n_79,arg__4_n_80,arg__4_n_81,arg__4_n_82,arg__4_n_83,arg__4_n_84,arg__4_n_85,arg__4_n_86,arg__4_n_87,arg__4_n_88,arg__4_n_89,arg__4_n_90,arg__4_n_91,arg__4_n_92,arg__4_n_93,arg__4_n_94,arg__4_n_95,arg__4_n_96,arg__4_n_97,arg__4_n_98,arg__4_n_99,arg__4_n_100,arg__4_n_101,arg__4_n_102,arg__4_n_103,arg__4_n_104,arg__4_n_105}),
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
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,input0_IBUF[16:0]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT({arg__5_n_24,arg__5_n_25,arg__5_n_26,arg__5_n_27,arg__5_n_28,arg__5_n_29,arg__5_n_30,arg__5_n_31,arg__5_n_32,arg__5_n_33,arg__5_n_34,arg__5_n_35,arg__5_n_36,arg__5_n_37,arg__5_n_38,arg__5_n_39,arg__5_n_40,arg__5_n_41,arg__5_n_42,arg__5_n_43,arg__5_n_44,arg__5_n_45,arg__5_n_46,arg__5_n_47,arg__5_n_48,arg__5_n_49,arg__5_n_50,arg__5_n_51,arg__5_n_52,arg__5_n_53}),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,weight0[16:0]}),
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
        .P({arg__5_n_58,arg__5_n_59,arg__5_n_60,arg__5_n_61,arg__5_n_62,arg__5_n_63,arg__5_n_64,arg__5_n_65,arg__5_n_66,arg__5_n_67,arg__5_n_68,arg__5_n_69,arg__5_n_70,arg__5_n_71,arg__5_n_72,arg__5_n_73,arg__5_n_74,arg__5_n_75,arg__5_n_76,arg__5_n_77,arg__5_n_78,arg__5_n_79,arg__5_n_80,arg__5_n_81,arg__5_n_82,arg__5_n_83,arg__5_n_84,arg__5_n_85,arg__5_n_86,arg__5_n_87,arg__5_n_88,arg__5_n_89,arg__5_n_90,arg__5_n_91,arg__5_n_92,arg__5_n_93,arg__5_n_94,arg__5_n_95,arg__5_n_96,arg__5_n_97,arg__5_n_98,arg__5_n_99,arg__5_n_100,arg__5_n_101,arg__5_n_102,arg__5_n_103,arg__5_n_104,arg__5_n_105}),
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
        .B({weight0[31],weight0[31],weight0[31],weight0[31:17]}),
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
        .P({arg__6_n_58,arg__6_n_59,arg__6_n_60,arg__6_n_61,arg__6_n_62,arg__6_n_63,arg__6_n_64,arg__6_n_65,arg__6_n_66,arg__6_n_67,arg__6_n_68,arg__6_n_69,arg__6_n_70,arg__6_n_71,arg__6_n_72,arg__6_n_73,arg__6_n_74,arg__6_n_75,arg__6_n_76,arg__6_n_77,arg__6_n_78,arg__6_n_79,arg__6_n_80,arg__6_n_81,arg__6_n_82,arg__6_n_83,arg__6_n_84,arg__6_n_85,arg__6_n_86,arg__6_n_87,arg__6_n_88,arg__6_n_89,arg__6_n_90,arg__6_n_91,arg__6_n_92,arg__6_n_93,arg__6_n_94,arg__6_n_95,arg__6_n_96,arg__6_n_97,arg__6_n_98,arg__6_n_99,arg__6_n_100,arg__6_n_101,arg__6_n_102,arg__6_n_103,arg__6_n_104,arg__6_n_105}),
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
  CARRY4 \final_OBUF[11]_inst_i_1 
       (.CI(\final_OBUF[7]_inst_i_1_n_0 ),
        .CO({\final_OBUF[11]_inst_i_1_n_0 ,\final_OBUF[11]_inst_i_1_n_1 ,\final_OBUF[11]_inst_i_1_n_2 ,\final_OBUF[11]_inst_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(l[-5:-8]),
        .O(final[11:8]),
        .S({\final_OBUF[11]_inst_i_3_n_0 ,\final_OBUF[11]_inst_i_4_n_0 ,\final_OBUF[11]_inst_i_5_n_0 ,\final_OBUF[11]_inst_i_6_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \final_OBUF[11]_inst_i_10 
       (.I0(arg__6_n_98),
        .I1(arg__3_n_98),
        .O(\final_OBUF[11]_inst_i_10_n_0 ));
  CARRY4 \final_OBUF[11]_inst_i_11 
       (.CI(\final_OBUF[7]_inst_i_11_n_0 ),
        .CO({\final_OBUF[11]_inst_i_11_n_0 ,\final_OBUF[11]_inst_i_11_n_1 ,\final_OBUF[11]_inst_i_11_n_2 ,\final_OBUF[11]_inst_i_11_n_3 }),
        .CYINIT(1'b0),
        .DI({arg__2_n_95,arg__2_n_96,arg__2_n_97,arg__2_n_98}),
        .O(to_s6[11:8]),
        .S({\final_OBUF[11]_inst_i_12_n_0 ,\final_OBUF[11]_inst_i_13_n_0 ,\final_OBUF[11]_inst_i_14_n_0 ,\final_OBUF[11]_inst_i_15_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \final_OBUF[11]_inst_i_12 
       (.I0(arg__2_n_95),
        .I1(arg_n_95),
        .O(\final_OBUF[11]_inst_i_12_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \final_OBUF[11]_inst_i_13 
       (.I0(arg__2_n_96),
        .I1(arg_n_96),
        .O(\final_OBUF[11]_inst_i_13_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \final_OBUF[11]_inst_i_14 
       (.I0(arg__2_n_97),
        .I1(arg_n_97),
        .O(\final_OBUF[11]_inst_i_14_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \final_OBUF[11]_inst_i_15 
       (.I0(arg__2_n_98),
        .I1(arg_n_98),
        .O(\final_OBUF[11]_inst_i_15_n_0 ));
  CARRY4 \final_OBUF[11]_inst_i_2 
       (.CI(\final_OBUF[7]_inst_i_2_n_0 ),
        .CO({\final_OBUF[11]_inst_i_2_n_0 ,\final_OBUF[11]_inst_i_2_n_1 ,\final_OBUF[11]_inst_i_2_n_2 ,\final_OBUF[11]_inst_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({arg__6_n_95,arg__6_n_96,arg__6_n_97,arg__6_n_98}),
        .O(l[-5:-8]),
        .S({\final_OBUF[11]_inst_i_7_n_0 ,\final_OBUF[11]_inst_i_8_n_0 ,\final_OBUF[11]_inst_i_9_n_0 ,\final_OBUF[11]_inst_i_10_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \final_OBUF[11]_inst_i_3 
       (.I0(l[-5]),
        .I1(to_s6[11]),
        .O(\final_OBUF[11]_inst_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \final_OBUF[11]_inst_i_4 
       (.I0(l[-6]),
        .I1(to_s6[10]),
        .O(\final_OBUF[11]_inst_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \final_OBUF[11]_inst_i_5 
       (.I0(l[-7]),
        .I1(to_s6[9]),
        .O(\final_OBUF[11]_inst_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \final_OBUF[11]_inst_i_6 
       (.I0(l[-8]),
        .I1(to_s6[8]),
        .O(\final_OBUF[11]_inst_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \final_OBUF[11]_inst_i_7 
       (.I0(arg__6_n_95),
        .I1(arg__3_n_95),
        .O(\final_OBUF[11]_inst_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \final_OBUF[11]_inst_i_8 
       (.I0(arg__6_n_96),
        .I1(arg__3_n_96),
        .O(\final_OBUF[11]_inst_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \final_OBUF[11]_inst_i_9 
       (.I0(arg__6_n_97),
        .I1(arg__3_n_97),
        .O(\final_OBUF[11]_inst_i_9_n_0 ));
  CARRY4 \final_OBUF[15]_inst_i_1 
       (.CI(\final_OBUF[11]_inst_i_1_n_0 ),
        .CO({\final_OBUF[15]_inst_i_1_n_0 ,\final_OBUF[15]_inst_i_1_n_1 ,\final_OBUF[15]_inst_i_1_n_2 ,\final_OBUF[15]_inst_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(l[-1:-4]),
        .O(final[15:12]),
        .S({\final_OBUF[15]_inst_i_3_n_0 ,\final_OBUF[15]_inst_i_4_n_0 ,\final_OBUF[15]_inst_i_5_n_0 ,\final_OBUF[15]_inst_i_6_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \final_OBUF[15]_inst_i_10 
       (.I0(arg__6_n_94),
        .I1(arg__3_n_94),
        .O(\final_OBUF[15]_inst_i_10_n_0 ));
  CARRY4 \final_OBUF[15]_inst_i_11 
       (.CI(\final_OBUF[11]_inst_i_11_n_0 ),
        .CO({\final_OBUF[15]_inst_i_11_n_0 ,\final_OBUF[15]_inst_i_11_n_1 ,\final_OBUF[15]_inst_i_11_n_2 ,\final_OBUF[15]_inst_i_11_n_3 }),
        .CYINIT(1'b0),
        .DI({arg__2_n_91,arg__2_n_92,arg__2_n_93,arg__2_n_94}),
        .O(to_s6[15:12]),
        .S({\final_OBUF[15]_inst_i_12_n_0 ,\final_OBUF[15]_inst_i_13_n_0 ,\final_OBUF[15]_inst_i_14_n_0 ,\final_OBUF[15]_inst_i_15_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \final_OBUF[15]_inst_i_12 
       (.I0(arg__2_n_91),
        .I1(arg_n_91),
        .O(\final_OBUF[15]_inst_i_12_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \final_OBUF[15]_inst_i_13 
       (.I0(arg__2_n_92),
        .I1(arg_n_92),
        .O(\final_OBUF[15]_inst_i_13_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \final_OBUF[15]_inst_i_14 
       (.I0(arg__2_n_93),
        .I1(arg_n_93),
        .O(\final_OBUF[15]_inst_i_14_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \final_OBUF[15]_inst_i_15 
       (.I0(arg__2_n_94),
        .I1(arg_n_94),
        .O(\final_OBUF[15]_inst_i_15_n_0 ));
  CARRY4 \final_OBUF[15]_inst_i_2 
       (.CI(\final_OBUF[11]_inst_i_2_n_0 ),
        .CO({\final_OBUF[15]_inst_i_2_n_0 ,\final_OBUF[15]_inst_i_2_n_1 ,\final_OBUF[15]_inst_i_2_n_2 ,\final_OBUF[15]_inst_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({arg__6_n_91,arg__6_n_92,arg__6_n_93,arg__6_n_94}),
        .O(l[-1:-4]),
        .S({\final_OBUF[15]_inst_i_7_n_0 ,\final_OBUF[15]_inst_i_8_n_0 ,\final_OBUF[15]_inst_i_9_n_0 ,\final_OBUF[15]_inst_i_10_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \final_OBUF[15]_inst_i_3 
       (.I0(l[-1]),
        .I1(to_s6[15]),
        .O(\final_OBUF[15]_inst_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \final_OBUF[15]_inst_i_4 
       (.I0(l[-2]),
        .I1(to_s6[14]),
        .O(\final_OBUF[15]_inst_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \final_OBUF[15]_inst_i_5 
       (.I0(l[-3]),
        .I1(to_s6[13]),
        .O(\final_OBUF[15]_inst_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \final_OBUF[15]_inst_i_6 
       (.I0(l[-4]),
        .I1(to_s6[12]),
        .O(\final_OBUF[15]_inst_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \final_OBUF[15]_inst_i_7 
       (.I0(arg__6_n_91),
        .I1(arg__3_n_91),
        .O(\final_OBUF[15]_inst_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \final_OBUF[15]_inst_i_8 
       (.I0(arg__6_n_92),
        .I1(arg__3_n_92),
        .O(\final_OBUF[15]_inst_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \final_OBUF[15]_inst_i_9 
       (.I0(arg__6_n_93),
        .I1(arg__3_n_93),
        .O(\final_OBUF[15]_inst_i_9_n_0 ));
  CARRY4 \final_OBUF[19]_inst_i_1 
       (.CI(\final_OBUF[15]_inst_i_1_n_0 ),
        .CO({\final_OBUF[19]_inst_i_1_n_0 ,\final_OBUF[19]_inst_i_1_n_1 ,\final_OBUF[19]_inst_i_1_n_2 ,\final_OBUF[19]_inst_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(l[3:0]),
        .O(final[19:16]),
        .S({\final_OBUF[19]_inst_i_3_n_0 ,\final_OBUF[19]_inst_i_4_n_0 ,\final_OBUF[19]_inst_i_5_n_0 ,\final_OBUF[19]_inst_i_6_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \final_OBUF[19]_inst_i_10 
       (.I0(arg__6_n_90),
        .I1(arg__3_n_90),
        .O(\final_OBUF[19]_inst_i_10_n_0 ));
  CARRY4 \final_OBUF[19]_inst_i_11 
       (.CI(\final_OBUF[15]_inst_i_11_n_0 ),
        .CO({\final_OBUF[19]_inst_i_11_n_0 ,\final_OBUF[19]_inst_i_11_n_1 ,\final_OBUF[19]_inst_i_11_n_2 ,\final_OBUF[19]_inst_i_11_n_3 }),
        .CYINIT(1'b0),
        .DI({arg__2_n_87,arg__2_n_88,arg__2_n_89,arg__2_n_90}),
        .O(to_s6[19:16]),
        .S({\final_OBUF[19]_inst_i_12_n_0 ,\final_OBUF[19]_inst_i_13_n_0 ,\final_OBUF[19]_inst_i_14_n_0 ,\final_OBUF[19]_inst_i_15_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \final_OBUF[19]_inst_i_12 
       (.I0(arg__2_n_87),
        .I1(arg__0_n_104),
        .O(\final_OBUF[19]_inst_i_12_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \final_OBUF[19]_inst_i_13 
       (.I0(arg__2_n_88),
        .I1(arg__0_n_105),
        .O(\final_OBUF[19]_inst_i_13_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \final_OBUF[19]_inst_i_14 
       (.I0(arg__2_n_89),
        .I1(arg_n_89),
        .O(\final_OBUF[19]_inst_i_14_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \final_OBUF[19]_inst_i_15 
       (.I0(arg__2_n_90),
        .I1(arg_n_90),
        .O(\final_OBUF[19]_inst_i_15_n_0 ));
  CARRY4 \final_OBUF[19]_inst_i_2 
       (.CI(\final_OBUF[15]_inst_i_2_n_0 ),
        .CO({\final_OBUF[19]_inst_i_2_n_0 ,\final_OBUF[19]_inst_i_2_n_1 ,\final_OBUF[19]_inst_i_2_n_2 ,\final_OBUF[19]_inst_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({arg__6_n_87,arg__6_n_88,arg__6_n_89,arg__6_n_90}),
        .O(l[3:0]),
        .S({\final_OBUF[19]_inst_i_7_n_0 ,\final_OBUF[19]_inst_i_8_n_0 ,\final_OBUF[19]_inst_i_9_n_0 ,\final_OBUF[19]_inst_i_10_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \final_OBUF[19]_inst_i_3 
       (.I0(l[3]),
        .I1(to_s6[19]),
        .O(\final_OBUF[19]_inst_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \final_OBUF[19]_inst_i_4 
       (.I0(l[2]),
        .I1(to_s6[18]),
        .O(\final_OBUF[19]_inst_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \final_OBUF[19]_inst_i_5 
       (.I0(l[1]),
        .I1(to_s6[17]),
        .O(\final_OBUF[19]_inst_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \final_OBUF[19]_inst_i_6 
       (.I0(l[0]),
        .I1(to_s6[16]),
        .O(\final_OBUF[19]_inst_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \final_OBUF[19]_inst_i_7 
       (.I0(arg__6_n_87),
        .I1(arg__4_n_104),
        .O(\final_OBUF[19]_inst_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \final_OBUF[19]_inst_i_8 
       (.I0(arg__6_n_88),
        .I1(arg__4_n_105),
        .O(\final_OBUF[19]_inst_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \final_OBUF[19]_inst_i_9 
       (.I0(arg__6_n_89),
        .I1(arg__3_n_89),
        .O(\final_OBUF[19]_inst_i_9_n_0 ));
  CARRY4 \final_OBUF[23]_inst_i_1 
       (.CI(\final_OBUF[19]_inst_i_1_n_0 ),
        .CO({\final_OBUF[23]_inst_i_1_n_0 ,\final_OBUF[23]_inst_i_1_n_1 ,\final_OBUF[23]_inst_i_1_n_2 ,\final_OBUF[23]_inst_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(l[7:4]),
        .O(final[23:20]),
        .S({\final_OBUF[23]_inst_i_3_n_0 ,\final_OBUF[23]_inst_i_4_n_0 ,\final_OBUF[23]_inst_i_5_n_0 ,\final_OBUF[23]_inst_i_6_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \final_OBUF[23]_inst_i_10 
       (.I0(arg__6_n_86),
        .I1(arg__4_n_103),
        .O(\final_OBUF[23]_inst_i_10_n_0 ));
  CARRY4 \final_OBUF[23]_inst_i_11 
       (.CI(\final_OBUF[19]_inst_i_11_n_0 ),
        .CO({\final_OBUF[23]_inst_i_11_n_0 ,\final_OBUF[23]_inst_i_11_n_1 ,\final_OBUF[23]_inst_i_11_n_2 ,\final_OBUF[23]_inst_i_11_n_3 }),
        .CYINIT(1'b0),
        .DI({arg__2_n_83,arg__2_n_84,arg__2_n_85,arg__2_n_86}),
        .O(to_s6[23:20]),
        .S({\final_OBUF[23]_inst_i_12_n_0 ,\final_OBUF[23]_inst_i_13_n_0 ,\final_OBUF[23]_inst_i_14_n_0 ,\final_OBUF[23]_inst_i_15_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \final_OBUF[23]_inst_i_12 
       (.I0(arg__2_n_83),
        .I1(arg__0_n_100),
        .O(\final_OBUF[23]_inst_i_12_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \final_OBUF[23]_inst_i_13 
       (.I0(arg__2_n_84),
        .I1(arg__0_n_101),
        .O(\final_OBUF[23]_inst_i_13_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \final_OBUF[23]_inst_i_14 
       (.I0(arg__2_n_85),
        .I1(arg__0_n_102),
        .O(\final_OBUF[23]_inst_i_14_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \final_OBUF[23]_inst_i_15 
       (.I0(arg__2_n_86),
        .I1(arg__0_n_103),
        .O(\final_OBUF[23]_inst_i_15_n_0 ));
  CARRY4 \final_OBUF[23]_inst_i_2 
       (.CI(\final_OBUF[19]_inst_i_2_n_0 ),
        .CO({\final_OBUF[23]_inst_i_2_n_0 ,\final_OBUF[23]_inst_i_2_n_1 ,\final_OBUF[23]_inst_i_2_n_2 ,\final_OBUF[23]_inst_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({arg__6_n_83,arg__6_n_84,arg__6_n_85,arg__6_n_86}),
        .O(l[7:4]),
        .S({\final_OBUF[23]_inst_i_7_n_0 ,\final_OBUF[23]_inst_i_8_n_0 ,\final_OBUF[23]_inst_i_9_n_0 ,\final_OBUF[23]_inst_i_10_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \final_OBUF[23]_inst_i_3 
       (.I0(l[7]),
        .I1(to_s6[23]),
        .O(\final_OBUF[23]_inst_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \final_OBUF[23]_inst_i_4 
       (.I0(l[6]),
        .I1(to_s6[22]),
        .O(\final_OBUF[23]_inst_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \final_OBUF[23]_inst_i_5 
       (.I0(l[5]),
        .I1(to_s6[21]),
        .O(\final_OBUF[23]_inst_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \final_OBUF[23]_inst_i_6 
       (.I0(l[4]),
        .I1(to_s6[20]),
        .O(\final_OBUF[23]_inst_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \final_OBUF[23]_inst_i_7 
       (.I0(arg__6_n_83),
        .I1(arg__4_n_100),
        .O(\final_OBUF[23]_inst_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \final_OBUF[23]_inst_i_8 
       (.I0(arg__6_n_84),
        .I1(arg__4_n_101),
        .O(\final_OBUF[23]_inst_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \final_OBUF[23]_inst_i_9 
       (.I0(arg__6_n_85),
        .I1(arg__4_n_102),
        .O(\final_OBUF[23]_inst_i_9_n_0 ));
  CARRY4 \final_OBUF[27]_inst_i_1 
       (.CI(\final_OBUF[23]_inst_i_1_n_0 ),
        .CO({\final_OBUF[27]_inst_i_1_n_0 ,\final_OBUF[27]_inst_i_1_n_1 ,\final_OBUF[27]_inst_i_1_n_2 ,\final_OBUF[27]_inst_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(l[11:8]),
        .O(final[27:24]),
        .S({\final_OBUF[27]_inst_i_3_n_0 ,\final_OBUF[27]_inst_i_4_n_0 ,\final_OBUF[27]_inst_i_5_n_0 ,\final_OBUF[27]_inst_i_6_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \final_OBUF[27]_inst_i_10 
       (.I0(arg__6_n_82),
        .I1(arg__4_n_99),
        .O(\final_OBUF[27]_inst_i_10_n_0 ));
  CARRY4 \final_OBUF[27]_inst_i_11 
       (.CI(\final_OBUF[23]_inst_i_11_n_0 ),
        .CO({\final_OBUF[27]_inst_i_11_n_0 ,\final_OBUF[27]_inst_i_11_n_1 ,\final_OBUF[27]_inst_i_11_n_2 ,\final_OBUF[27]_inst_i_11_n_3 }),
        .CYINIT(1'b0),
        .DI({arg__2_n_79,arg__2_n_80,arg__2_n_81,arg__2_n_82}),
        .O(to_s6[27:24]),
        .S({\final_OBUF[27]_inst_i_12_n_0 ,\final_OBUF[27]_inst_i_13_n_0 ,\final_OBUF[27]_inst_i_14_n_0 ,\final_OBUF[27]_inst_i_15_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \final_OBUF[27]_inst_i_12 
       (.I0(arg__2_n_79),
        .I1(arg__0_n_96),
        .O(\final_OBUF[27]_inst_i_12_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \final_OBUF[27]_inst_i_13 
       (.I0(arg__2_n_80),
        .I1(arg__0_n_97),
        .O(\final_OBUF[27]_inst_i_13_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \final_OBUF[27]_inst_i_14 
       (.I0(arg__2_n_81),
        .I1(arg__0_n_98),
        .O(\final_OBUF[27]_inst_i_14_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \final_OBUF[27]_inst_i_15 
       (.I0(arg__2_n_82),
        .I1(arg__0_n_99),
        .O(\final_OBUF[27]_inst_i_15_n_0 ));
  CARRY4 \final_OBUF[27]_inst_i_2 
       (.CI(\final_OBUF[23]_inst_i_2_n_0 ),
        .CO({\final_OBUF[27]_inst_i_2_n_0 ,\final_OBUF[27]_inst_i_2_n_1 ,\final_OBUF[27]_inst_i_2_n_2 ,\final_OBUF[27]_inst_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({arg__6_n_79,arg__6_n_80,arg__6_n_81,arg__6_n_82}),
        .O(l[11:8]),
        .S({\final_OBUF[27]_inst_i_7_n_0 ,\final_OBUF[27]_inst_i_8_n_0 ,\final_OBUF[27]_inst_i_9_n_0 ,\final_OBUF[27]_inst_i_10_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \final_OBUF[27]_inst_i_3 
       (.I0(l[11]),
        .I1(to_s6[27]),
        .O(\final_OBUF[27]_inst_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \final_OBUF[27]_inst_i_4 
       (.I0(l[10]),
        .I1(to_s6[26]),
        .O(\final_OBUF[27]_inst_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \final_OBUF[27]_inst_i_5 
       (.I0(l[9]),
        .I1(to_s6[25]),
        .O(\final_OBUF[27]_inst_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \final_OBUF[27]_inst_i_6 
       (.I0(l[8]),
        .I1(to_s6[24]),
        .O(\final_OBUF[27]_inst_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \final_OBUF[27]_inst_i_7 
       (.I0(arg__6_n_79),
        .I1(arg__4_n_96),
        .O(\final_OBUF[27]_inst_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \final_OBUF[27]_inst_i_8 
       (.I0(arg__6_n_80),
        .I1(arg__4_n_97),
        .O(\final_OBUF[27]_inst_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \final_OBUF[27]_inst_i_9 
       (.I0(arg__6_n_81),
        .I1(arg__4_n_98),
        .O(\final_OBUF[27]_inst_i_9_n_0 ));
  CARRY4 \final_OBUF[31]_inst_i_1 
       (.CI(\final_OBUF[27]_inst_i_1_n_0 ),
        .CO({\NLW_final_OBUF[31]_inst_i_1_CO_UNCONNECTED [3],\final_OBUF[31]_inst_i_1_n_1 ,\final_OBUF[31]_inst_i_1_n_2 ,\final_OBUF[31]_inst_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,l[14:12]}),
        .O(final[31:28]),
        .S({\final_OBUF[31]_inst_i_3_n_0 ,\final_OBUF[31]_inst_i_4_n_0 ,\final_OBUF[31]_inst_i_5_n_0 ,\final_OBUF[31]_inst_i_6_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \final_OBUF[31]_inst_i_10 
       (.I0(arg__6_n_78),
        .I1(arg__4_n_95),
        .O(\final_OBUF[31]_inst_i_10_n_0 ));
  CARRY4 \final_OBUF[31]_inst_i_11 
       (.CI(\final_OBUF[27]_inst_i_11_n_0 ),
        .CO({\NLW_final_OBUF[31]_inst_i_11_CO_UNCONNECTED [3],\final_OBUF[31]_inst_i_11_n_1 ,\final_OBUF[31]_inst_i_11_n_2 ,\final_OBUF[31]_inst_i_11_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,arg__2_n_76,arg__2_n_77,arg__2_n_78}),
        .O(to_s6[31:28]),
        .S({\final_OBUF[31]_inst_i_12_n_0 ,\final_OBUF[31]_inst_i_13_n_0 ,\final_OBUF[31]_inst_i_14_n_0 ,\final_OBUF[31]_inst_i_15_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \final_OBUF[31]_inst_i_12 
       (.I0(arg__2_n_75),
        .I1(arg__0_n_92),
        .O(\final_OBUF[31]_inst_i_12_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \final_OBUF[31]_inst_i_13 
       (.I0(arg__2_n_76),
        .I1(arg__0_n_93),
        .O(\final_OBUF[31]_inst_i_13_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \final_OBUF[31]_inst_i_14 
       (.I0(arg__2_n_77),
        .I1(arg__0_n_94),
        .O(\final_OBUF[31]_inst_i_14_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \final_OBUF[31]_inst_i_15 
       (.I0(arg__2_n_78),
        .I1(arg__0_n_95),
        .O(\final_OBUF[31]_inst_i_15_n_0 ));
  CARRY4 \final_OBUF[31]_inst_i_2 
       (.CI(\final_OBUF[27]_inst_i_2_n_0 ),
        .CO({\NLW_final_OBUF[31]_inst_i_2_CO_UNCONNECTED [3],\final_OBUF[31]_inst_i_2_n_1 ,\final_OBUF[31]_inst_i_2_n_2 ,\final_OBUF[31]_inst_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,arg__6_n_76,arg__6_n_77,arg__6_n_78}),
        .O(l[15:12]),
        .S({\final_OBUF[31]_inst_i_7_n_0 ,\final_OBUF[31]_inst_i_8_n_0 ,\final_OBUF[31]_inst_i_9_n_0 ,\final_OBUF[31]_inst_i_10_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \final_OBUF[31]_inst_i_3 
       (.I0(l[15]),
        .I1(to_s6[31]),
        .O(\final_OBUF[31]_inst_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \final_OBUF[31]_inst_i_4 
       (.I0(l[14]),
        .I1(to_s6[30]),
        .O(\final_OBUF[31]_inst_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \final_OBUF[31]_inst_i_5 
       (.I0(l[13]),
        .I1(to_s6[29]),
        .O(\final_OBUF[31]_inst_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \final_OBUF[31]_inst_i_6 
       (.I0(l[12]),
        .I1(to_s6[28]),
        .O(\final_OBUF[31]_inst_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \final_OBUF[31]_inst_i_7 
       (.I0(arg__6_n_75),
        .I1(arg__4_n_92),
        .O(\final_OBUF[31]_inst_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \final_OBUF[31]_inst_i_8 
       (.I0(arg__6_n_76),
        .I1(arg__4_n_93),
        .O(\final_OBUF[31]_inst_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \final_OBUF[31]_inst_i_9 
       (.I0(arg__6_n_77),
        .I1(arg__4_n_94),
        .O(\final_OBUF[31]_inst_i_9_n_0 ));
  CARRY4 \final_OBUF[3]_inst_i_1 
       (.CI(1'b0),
        .CO({\final_OBUF[3]_inst_i_1_n_0 ,\final_OBUF[3]_inst_i_1_n_1 ,\final_OBUF[3]_inst_i_1_n_2 ,\final_OBUF[3]_inst_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(l[-13:-16]),
        .O(final[3:0]),
        .S({\final_OBUF[3]_inst_i_3_n_0 ,\final_OBUF[3]_inst_i_4_n_0 ,\final_OBUF[3]_inst_i_5_n_0 ,\final_OBUF[3]_inst_i_6_n_0 }));
  LUT1 #(
    .INIT(2'h2)) 
    \final_OBUF[3]_inst_i_10 
       (.I0(arg__5_n_89),
        .O(\final_OBUF[3]_inst_i_10_n_0 ));
  CARRY4 \final_OBUF[3]_inst_i_11 
       (.CI(1'b0),
        .CO({\final_OBUF[3]_inst_i_11_n_0 ,\final_OBUF[3]_inst_i_11_n_1 ,\final_OBUF[3]_inst_i_11_n_2 ,\final_OBUF[3]_inst_i_11_n_3 }),
        .CYINIT(1'b0),
        .DI({arg__2_n_103,arg__2_n_104,arg__2_n_105,1'b0}),
        .O(to_s6[3:0]),
        .S({\final_OBUF[3]_inst_i_12_n_0 ,\final_OBUF[3]_inst_i_13_n_0 ,\final_OBUF[3]_inst_i_14_n_0 ,\final_OBUF[3]_inst_i_15_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \final_OBUF[3]_inst_i_12 
       (.I0(arg__2_n_103),
        .I1(arg_n_103),
        .O(\final_OBUF[3]_inst_i_12_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \final_OBUF[3]_inst_i_13 
       (.I0(arg__2_n_104),
        .I1(arg_n_104),
        .O(\final_OBUF[3]_inst_i_13_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \final_OBUF[3]_inst_i_14 
       (.I0(arg__2_n_105),
        .I1(arg_n_105),
        .O(\final_OBUF[3]_inst_i_14_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \final_OBUF[3]_inst_i_15 
       (.I0(arg__1_n_89),
        .O(\final_OBUF[3]_inst_i_15_n_0 ));
  CARRY4 \final_OBUF[3]_inst_i_2 
       (.CI(1'b0),
        .CO({\final_OBUF[3]_inst_i_2_n_0 ,\final_OBUF[3]_inst_i_2_n_1 ,\final_OBUF[3]_inst_i_2_n_2 ,\final_OBUF[3]_inst_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({arg__6_n_103,arg__6_n_104,arg__6_n_105,1'b0}),
        .O(l[-13:-16]),
        .S({\final_OBUF[3]_inst_i_7_n_0 ,\final_OBUF[3]_inst_i_8_n_0 ,\final_OBUF[3]_inst_i_9_n_0 ,\final_OBUF[3]_inst_i_10_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \final_OBUF[3]_inst_i_3 
       (.I0(l[-13]),
        .I1(to_s6[3]),
        .O(\final_OBUF[3]_inst_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \final_OBUF[3]_inst_i_4 
       (.I0(l[-14]),
        .I1(to_s6[2]),
        .O(\final_OBUF[3]_inst_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \final_OBUF[3]_inst_i_5 
       (.I0(l[-15]),
        .I1(to_s6[1]),
        .O(\final_OBUF[3]_inst_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \final_OBUF[3]_inst_i_6 
       (.I0(l[-16]),
        .I1(to_s6[0]),
        .O(\final_OBUF[3]_inst_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \final_OBUF[3]_inst_i_7 
       (.I0(arg__6_n_103),
        .I1(arg__3_n_103),
        .O(\final_OBUF[3]_inst_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \final_OBUF[3]_inst_i_8 
       (.I0(arg__6_n_104),
        .I1(arg__3_n_104),
        .O(\final_OBUF[3]_inst_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \final_OBUF[3]_inst_i_9 
       (.I0(arg__6_n_105),
        .I1(arg__3_n_105),
        .O(\final_OBUF[3]_inst_i_9_n_0 ));
  CARRY4 \final_OBUF[7]_inst_i_1 
       (.CI(\final_OBUF[3]_inst_i_1_n_0 ),
        .CO({\final_OBUF[7]_inst_i_1_n_0 ,\final_OBUF[7]_inst_i_1_n_1 ,\final_OBUF[7]_inst_i_1_n_2 ,\final_OBUF[7]_inst_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(l[-9:-12]),
        .O(final[7:4]),
        .S({\final_OBUF[7]_inst_i_3_n_0 ,\final_OBUF[7]_inst_i_4_n_0 ,\final_OBUF[7]_inst_i_5_n_0 ,\final_OBUF[7]_inst_i_6_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \final_OBUF[7]_inst_i_10 
       (.I0(arg__6_n_102),
        .I1(arg__3_n_102),
        .O(\final_OBUF[7]_inst_i_10_n_0 ));
  CARRY4 \final_OBUF[7]_inst_i_11 
       (.CI(\final_OBUF[3]_inst_i_11_n_0 ),
        .CO({\final_OBUF[7]_inst_i_11_n_0 ,\final_OBUF[7]_inst_i_11_n_1 ,\final_OBUF[7]_inst_i_11_n_2 ,\final_OBUF[7]_inst_i_11_n_3 }),
        .CYINIT(1'b0),
        .DI({arg__2_n_99,arg__2_n_100,arg__2_n_101,arg__2_n_102}),
        .O(to_s6[7:4]),
        .S({\final_OBUF[7]_inst_i_12_n_0 ,\final_OBUF[7]_inst_i_13_n_0 ,\final_OBUF[7]_inst_i_14_n_0 ,\final_OBUF[7]_inst_i_15_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \final_OBUF[7]_inst_i_12 
       (.I0(arg__2_n_99),
        .I1(arg_n_99),
        .O(\final_OBUF[7]_inst_i_12_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \final_OBUF[7]_inst_i_13 
       (.I0(arg__2_n_100),
        .I1(arg_n_100),
        .O(\final_OBUF[7]_inst_i_13_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \final_OBUF[7]_inst_i_14 
       (.I0(arg__2_n_101),
        .I1(arg_n_101),
        .O(\final_OBUF[7]_inst_i_14_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \final_OBUF[7]_inst_i_15 
       (.I0(arg__2_n_102),
        .I1(arg_n_102),
        .O(\final_OBUF[7]_inst_i_15_n_0 ));
  CARRY4 \final_OBUF[7]_inst_i_2 
       (.CI(\final_OBUF[3]_inst_i_2_n_0 ),
        .CO({\final_OBUF[7]_inst_i_2_n_0 ,\final_OBUF[7]_inst_i_2_n_1 ,\final_OBUF[7]_inst_i_2_n_2 ,\final_OBUF[7]_inst_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({arg__6_n_99,arg__6_n_100,arg__6_n_101,arg__6_n_102}),
        .O(l[-9:-12]),
        .S({\final_OBUF[7]_inst_i_7_n_0 ,\final_OBUF[7]_inst_i_8_n_0 ,\final_OBUF[7]_inst_i_9_n_0 ,\final_OBUF[7]_inst_i_10_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \final_OBUF[7]_inst_i_3 
       (.I0(l[-9]),
        .I1(to_s6[7]),
        .O(\final_OBUF[7]_inst_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \final_OBUF[7]_inst_i_4 
       (.I0(l[-10]),
        .I1(to_s6[6]),
        .O(\final_OBUF[7]_inst_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \final_OBUF[7]_inst_i_5 
       (.I0(l[-11]),
        .I1(to_s6[5]),
        .O(\final_OBUF[7]_inst_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \final_OBUF[7]_inst_i_6 
       (.I0(l[-12]),
        .I1(to_s6[4]),
        .O(\final_OBUF[7]_inst_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \final_OBUF[7]_inst_i_7 
       (.I0(arg__6_n_99),
        .I1(arg__3_n_99),
        .O(\final_OBUF[7]_inst_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \final_OBUF[7]_inst_i_8 
       (.I0(arg__6_n_100),
        .I1(arg__3_n_100),
        .O(\final_OBUF[7]_inst_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \final_OBUF[7]_inst_i_9 
       (.I0(arg__6_n_101),
        .I1(arg__3_n_101),
        .O(\final_OBUF[7]_inst_i_9_n_0 ));
endmodule

(* NotValidForBitStream *)
module neuron
   (input0,
    input1,
    weight0,
    weight1,
    final);
  input [31:0]input0;
  input [31:0]input1;
  input [31:0]weight0;
  input [31:0]weight1;
  output [31:0]final;

  wire [31:0]final;
  wire [31:0]final_OBUF;
  wire [31:0]input0;
  wire [31:0]input0_IBUF;
  wire [31:0]input1;
  wire [31:0]input1_IBUF;
  wire [31:0]weight0;
  wire [31:0]weight0_IBUF;
  wire [31:0]weight1;
  wire [31:0]weight1_IBUF;

initial begin
 $sdf_annotate("MAC_tb_time_synth.sdf",,,,"tool_control");
end
  MAC MC
       (.final(final_OBUF),
        .input0_IBUF(input0_IBUF),
        .input1_IBUF(input1_IBUF),
        .weight0(weight0_IBUF),
        .weight1(weight1_IBUF));
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
  OBUF \final_OBUF[16]_inst 
       (.I(final_OBUF[16]),
        .O(final[16]));
  OBUF \final_OBUF[17]_inst 
       (.I(final_OBUF[17]),
        .O(final[17]));
  OBUF \final_OBUF[18]_inst 
       (.I(final_OBUF[18]),
        .O(final[18]));
  OBUF \final_OBUF[19]_inst 
       (.I(final_OBUF[19]),
        .O(final[19]));
  OBUF \final_OBUF[1]_inst 
       (.I(final_OBUF[1]),
        .O(final[1]));
  OBUF \final_OBUF[20]_inst 
       (.I(final_OBUF[20]),
        .O(final[20]));
  OBUF \final_OBUF[21]_inst 
       (.I(final_OBUF[21]),
        .O(final[21]));
  OBUF \final_OBUF[22]_inst 
       (.I(final_OBUF[22]),
        .O(final[22]));
  OBUF \final_OBUF[23]_inst 
       (.I(final_OBUF[23]),
        .O(final[23]));
  OBUF \final_OBUF[24]_inst 
       (.I(final_OBUF[24]),
        .O(final[24]));
  OBUF \final_OBUF[25]_inst 
       (.I(final_OBUF[25]),
        .O(final[25]));
  OBUF \final_OBUF[26]_inst 
       (.I(final_OBUF[26]),
        .O(final[26]));
  OBUF \final_OBUF[27]_inst 
       (.I(final_OBUF[27]),
        .O(final[27]));
  OBUF \final_OBUF[28]_inst 
       (.I(final_OBUF[28]),
        .O(final[28]));
  OBUF \final_OBUF[29]_inst 
       (.I(final_OBUF[29]),
        .O(final[29]));
  OBUF \final_OBUF[2]_inst 
       (.I(final_OBUF[2]),
        .O(final[2]));
  OBUF \final_OBUF[30]_inst 
       (.I(final_OBUF[30]),
        .O(final[30]));
  OBUF \final_OBUF[31]_inst 
       (.I(final_OBUF[31]),
        .O(final[31]));
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
  IBUF \input0_IBUF[0]_inst 
       (.I(input0[0]),
        .O(input0_IBUF[0]));
  IBUF \input0_IBUF[10]_inst 
       (.I(input0[10]),
        .O(input0_IBUF[10]));
  IBUF \input0_IBUF[11]_inst 
       (.I(input0[11]),
        .O(input0_IBUF[11]));
  IBUF \input0_IBUF[12]_inst 
       (.I(input0[12]),
        .O(input0_IBUF[12]));
  IBUF \input0_IBUF[13]_inst 
       (.I(input0[13]),
        .O(input0_IBUF[13]));
  IBUF \input0_IBUF[14]_inst 
       (.I(input0[14]),
        .O(input0_IBUF[14]));
  IBUF \input0_IBUF[15]_inst 
       (.I(input0[15]),
        .O(input0_IBUF[15]));
  IBUF \input0_IBUF[16]_inst 
       (.I(input0[16]),
        .O(input0_IBUF[16]));
  IBUF \input0_IBUF[17]_inst 
       (.I(input0[17]),
        .O(input0_IBUF[17]));
  IBUF \input0_IBUF[18]_inst 
       (.I(input0[18]),
        .O(input0_IBUF[18]));
  IBUF \input0_IBUF[19]_inst 
       (.I(input0[19]),
        .O(input0_IBUF[19]));
  IBUF \input0_IBUF[1]_inst 
       (.I(input0[1]),
        .O(input0_IBUF[1]));
  IBUF \input0_IBUF[20]_inst 
       (.I(input0[20]),
        .O(input0_IBUF[20]));
  IBUF \input0_IBUF[21]_inst 
       (.I(input0[21]),
        .O(input0_IBUF[21]));
  IBUF \input0_IBUF[22]_inst 
       (.I(input0[22]),
        .O(input0_IBUF[22]));
  IBUF \input0_IBUF[23]_inst 
       (.I(input0[23]),
        .O(input0_IBUF[23]));
  IBUF \input0_IBUF[24]_inst 
       (.I(input0[24]),
        .O(input0_IBUF[24]));
  IBUF \input0_IBUF[25]_inst 
       (.I(input0[25]),
        .O(input0_IBUF[25]));
  IBUF \input0_IBUF[26]_inst 
       (.I(input0[26]),
        .O(input0_IBUF[26]));
  IBUF \input0_IBUF[27]_inst 
       (.I(input0[27]),
        .O(input0_IBUF[27]));
  IBUF \input0_IBUF[28]_inst 
       (.I(input0[28]),
        .O(input0_IBUF[28]));
  IBUF \input0_IBUF[29]_inst 
       (.I(input0[29]),
        .O(input0_IBUF[29]));
  IBUF \input0_IBUF[2]_inst 
       (.I(input0[2]),
        .O(input0_IBUF[2]));
  IBUF \input0_IBUF[30]_inst 
       (.I(input0[30]),
        .O(input0_IBUF[30]));
  IBUF \input0_IBUF[31]_inst 
       (.I(input0[31]),
        .O(input0_IBUF[31]));
  IBUF \input0_IBUF[3]_inst 
       (.I(input0[3]),
        .O(input0_IBUF[3]));
  IBUF \input0_IBUF[4]_inst 
       (.I(input0[4]),
        .O(input0_IBUF[4]));
  IBUF \input0_IBUF[5]_inst 
       (.I(input0[5]),
        .O(input0_IBUF[5]));
  IBUF \input0_IBUF[6]_inst 
       (.I(input0[6]),
        .O(input0_IBUF[6]));
  IBUF \input0_IBUF[7]_inst 
       (.I(input0[7]),
        .O(input0_IBUF[7]));
  IBUF \input0_IBUF[8]_inst 
       (.I(input0[8]),
        .O(input0_IBUF[8]));
  IBUF \input0_IBUF[9]_inst 
       (.I(input0[9]),
        .O(input0_IBUF[9]));
  IBUF \input1_IBUF[0]_inst 
       (.I(input1[0]),
        .O(input1_IBUF[0]));
  IBUF \input1_IBUF[10]_inst 
       (.I(input1[10]),
        .O(input1_IBUF[10]));
  IBUF \input1_IBUF[11]_inst 
       (.I(input1[11]),
        .O(input1_IBUF[11]));
  IBUF \input1_IBUF[12]_inst 
       (.I(input1[12]),
        .O(input1_IBUF[12]));
  IBUF \input1_IBUF[13]_inst 
       (.I(input1[13]),
        .O(input1_IBUF[13]));
  IBUF \input1_IBUF[14]_inst 
       (.I(input1[14]),
        .O(input1_IBUF[14]));
  IBUF \input1_IBUF[15]_inst 
       (.I(input1[15]),
        .O(input1_IBUF[15]));
  IBUF \input1_IBUF[16]_inst 
       (.I(input1[16]),
        .O(input1_IBUF[16]));
  IBUF \input1_IBUF[17]_inst 
       (.I(input1[17]),
        .O(input1_IBUF[17]));
  IBUF \input1_IBUF[18]_inst 
       (.I(input1[18]),
        .O(input1_IBUF[18]));
  IBUF \input1_IBUF[19]_inst 
       (.I(input1[19]),
        .O(input1_IBUF[19]));
  IBUF \input1_IBUF[1]_inst 
       (.I(input1[1]),
        .O(input1_IBUF[1]));
  IBUF \input1_IBUF[20]_inst 
       (.I(input1[20]),
        .O(input1_IBUF[20]));
  IBUF \input1_IBUF[21]_inst 
       (.I(input1[21]),
        .O(input1_IBUF[21]));
  IBUF \input1_IBUF[22]_inst 
       (.I(input1[22]),
        .O(input1_IBUF[22]));
  IBUF \input1_IBUF[23]_inst 
       (.I(input1[23]),
        .O(input1_IBUF[23]));
  IBUF \input1_IBUF[24]_inst 
       (.I(input1[24]),
        .O(input1_IBUF[24]));
  IBUF \input1_IBUF[25]_inst 
       (.I(input1[25]),
        .O(input1_IBUF[25]));
  IBUF \input1_IBUF[26]_inst 
       (.I(input1[26]),
        .O(input1_IBUF[26]));
  IBUF \input1_IBUF[27]_inst 
       (.I(input1[27]),
        .O(input1_IBUF[27]));
  IBUF \input1_IBUF[28]_inst 
       (.I(input1[28]),
        .O(input1_IBUF[28]));
  IBUF \input1_IBUF[29]_inst 
       (.I(input1[29]),
        .O(input1_IBUF[29]));
  IBUF \input1_IBUF[2]_inst 
       (.I(input1[2]),
        .O(input1_IBUF[2]));
  IBUF \input1_IBUF[30]_inst 
       (.I(input1[30]),
        .O(input1_IBUF[30]));
  IBUF \input1_IBUF[31]_inst 
       (.I(input1[31]),
        .O(input1_IBUF[31]));
  IBUF \input1_IBUF[3]_inst 
       (.I(input1[3]),
        .O(input1_IBUF[3]));
  IBUF \input1_IBUF[4]_inst 
       (.I(input1[4]),
        .O(input1_IBUF[4]));
  IBUF \input1_IBUF[5]_inst 
       (.I(input1[5]),
        .O(input1_IBUF[5]));
  IBUF \input1_IBUF[6]_inst 
       (.I(input1[6]),
        .O(input1_IBUF[6]));
  IBUF \input1_IBUF[7]_inst 
       (.I(input1[7]),
        .O(input1_IBUF[7]));
  IBUF \input1_IBUF[8]_inst 
       (.I(input1[8]),
        .O(input1_IBUF[8]));
  IBUF \input1_IBUF[9]_inst 
       (.I(input1[9]),
        .O(input1_IBUF[9]));
  IBUF \weight0_IBUF[0]_inst 
       (.I(weight0[0]),
        .O(weight0_IBUF[0]));
  IBUF \weight0_IBUF[10]_inst 
       (.I(weight0[10]),
        .O(weight0_IBUF[10]));
  IBUF \weight0_IBUF[11]_inst 
       (.I(weight0[11]),
        .O(weight0_IBUF[11]));
  IBUF \weight0_IBUF[12]_inst 
       (.I(weight0[12]),
        .O(weight0_IBUF[12]));
  IBUF \weight0_IBUF[13]_inst 
       (.I(weight0[13]),
        .O(weight0_IBUF[13]));
  IBUF \weight0_IBUF[14]_inst 
       (.I(weight0[14]),
        .O(weight0_IBUF[14]));
  IBUF \weight0_IBUF[15]_inst 
       (.I(weight0[15]),
        .O(weight0_IBUF[15]));
  IBUF \weight0_IBUF[16]_inst 
       (.I(weight0[16]),
        .O(weight0_IBUF[16]));
  IBUF \weight0_IBUF[17]_inst 
       (.I(weight0[17]),
        .O(weight0_IBUF[17]));
  IBUF \weight0_IBUF[18]_inst 
       (.I(weight0[18]),
        .O(weight0_IBUF[18]));
  IBUF \weight0_IBUF[19]_inst 
       (.I(weight0[19]),
        .O(weight0_IBUF[19]));
  IBUF \weight0_IBUF[1]_inst 
       (.I(weight0[1]),
        .O(weight0_IBUF[1]));
  IBUF \weight0_IBUF[20]_inst 
       (.I(weight0[20]),
        .O(weight0_IBUF[20]));
  IBUF \weight0_IBUF[21]_inst 
       (.I(weight0[21]),
        .O(weight0_IBUF[21]));
  IBUF \weight0_IBUF[22]_inst 
       (.I(weight0[22]),
        .O(weight0_IBUF[22]));
  IBUF \weight0_IBUF[23]_inst 
       (.I(weight0[23]),
        .O(weight0_IBUF[23]));
  IBUF \weight0_IBUF[24]_inst 
       (.I(weight0[24]),
        .O(weight0_IBUF[24]));
  IBUF \weight0_IBUF[25]_inst 
       (.I(weight0[25]),
        .O(weight0_IBUF[25]));
  IBUF \weight0_IBUF[26]_inst 
       (.I(weight0[26]),
        .O(weight0_IBUF[26]));
  IBUF \weight0_IBUF[27]_inst 
       (.I(weight0[27]),
        .O(weight0_IBUF[27]));
  IBUF \weight0_IBUF[28]_inst 
       (.I(weight0[28]),
        .O(weight0_IBUF[28]));
  IBUF \weight0_IBUF[29]_inst 
       (.I(weight0[29]),
        .O(weight0_IBUF[29]));
  IBUF \weight0_IBUF[2]_inst 
       (.I(weight0[2]),
        .O(weight0_IBUF[2]));
  IBUF \weight0_IBUF[30]_inst 
       (.I(weight0[30]),
        .O(weight0_IBUF[30]));
  IBUF \weight0_IBUF[31]_inst 
       (.I(weight0[31]),
        .O(weight0_IBUF[31]));
  IBUF \weight0_IBUF[3]_inst 
       (.I(weight0[3]),
        .O(weight0_IBUF[3]));
  IBUF \weight0_IBUF[4]_inst 
       (.I(weight0[4]),
        .O(weight0_IBUF[4]));
  IBUF \weight0_IBUF[5]_inst 
       (.I(weight0[5]),
        .O(weight0_IBUF[5]));
  IBUF \weight0_IBUF[6]_inst 
       (.I(weight0[6]),
        .O(weight0_IBUF[6]));
  IBUF \weight0_IBUF[7]_inst 
       (.I(weight0[7]),
        .O(weight0_IBUF[7]));
  IBUF \weight0_IBUF[8]_inst 
       (.I(weight0[8]),
        .O(weight0_IBUF[8]));
  IBUF \weight0_IBUF[9]_inst 
       (.I(weight0[9]),
        .O(weight0_IBUF[9]));
  IBUF \weight1_IBUF[0]_inst 
       (.I(weight1[0]),
        .O(weight1_IBUF[0]));
  IBUF \weight1_IBUF[10]_inst 
       (.I(weight1[10]),
        .O(weight1_IBUF[10]));
  IBUF \weight1_IBUF[11]_inst 
       (.I(weight1[11]),
        .O(weight1_IBUF[11]));
  IBUF \weight1_IBUF[12]_inst 
       (.I(weight1[12]),
        .O(weight1_IBUF[12]));
  IBUF \weight1_IBUF[13]_inst 
       (.I(weight1[13]),
        .O(weight1_IBUF[13]));
  IBUF \weight1_IBUF[14]_inst 
       (.I(weight1[14]),
        .O(weight1_IBUF[14]));
  IBUF \weight1_IBUF[15]_inst 
       (.I(weight1[15]),
        .O(weight1_IBUF[15]));
  IBUF \weight1_IBUF[16]_inst 
       (.I(weight1[16]),
        .O(weight1_IBUF[16]));
  IBUF \weight1_IBUF[17]_inst 
       (.I(weight1[17]),
        .O(weight1_IBUF[17]));
  IBUF \weight1_IBUF[18]_inst 
       (.I(weight1[18]),
        .O(weight1_IBUF[18]));
  IBUF \weight1_IBUF[19]_inst 
       (.I(weight1[19]),
        .O(weight1_IBUF[19]));
  IBUF \weight1_IBUF[1]_inst 
       (.I(weight1[1]),
        .O(weight1_IBUF[1]));
  IBUF \weight1_IBUF[20]_inst 
       (.I(weight1[20]),
        .O(weight1_IBUF[20]));
  IBUF \weight1_IBUF[21]_inst 
       (.I(weight1[21]),
        .O(weight1_IBUF[21]));
  IBUF \weight1_IBUF[22]_inst 
       (.I(weight1[22]),
        .O(weight1_IBUF[22]));
  IBUF \weight1_IBUF[23]_inst 
       (.I(weight1[23]),
        .O(weight1_IBUF[23]));
  IBUF \weight1_IBUF[24]_inst 
       (.I(weight1[24]),
        .O(weight1_IBUF[24]));
  IBUF \weight1_IBUF[25]_inst 
       (.I(weight1[25]),
        .O(weight1_IBUF[25]));
  IBUF \weight1_IBUF[26]_inst 
       (.I(weight1[26]),
        .O(weight1_IBUF[26]));
  IBUF \weight1_IBUF[27]_inst 
       (.I(weight1[27]),
        .O(weight1_IBUF[27]));
  IBUF \weight1_IBUF[28]_inst 
       (.I(weight1[28]),
        .O(weight1_IBUF[28]));
  IBUF \weight1_IBUF[29]_inst 
       (.I(weight1[29]),
        .O(weight1_IBUF[29]));
  IBUF \weight1_IBUF[2]_inst 
       (.I(weight1[2]),
        .O(weight1_IBUF[2]));
  IBUF \weight1_IBUF[30]_inst 
       (.I(weight1[30]),
        .O(weight1_IBUF[30]));
  IBUF \weight1_IBUF[31]_inst 
       (.I(weight1[31]),
        .O(weight1_IBUF[31]));
  IBUF \weight1_IBUF[3]_inst 
       (.I(weight1[3]),
        .O(weight1_IBUF[3]));
  IBUF \weight1_IBUF[4]_inst 
       (.I(weight1[4]),
        .O(weight1_IBUF[4]));
  IBUF \weight1_IBUF[5]_inst 
       (.I(weight1[5]),
        .O(weight1_IBUF[5]));
  IBUF \weight1_IBUF[6]_inst 
       (.I(weight1[6]),
        .O(weight1_IBUF[6]));
  IBUF \weight1_IBUF[7]_inst 
       (.I(weight1[7]),
        .O(weight1_IBUF[7]));
  IBUF \weight1_IBUF[8]_inst 
       (.I(weight1[8]),
        .O(weight1_IBUF[8]));
  IBUF \weight1_IBUF[9]_inst 
       (.I(weight1[9]),
        .O(weight1_IBUF[9]));
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
