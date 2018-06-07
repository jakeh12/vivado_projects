-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.1 (lin64) Build 2188600 Wed Apr  4 18:39:19 MDT 2018
-- Date        : Fri Jun  1 22:52:41 2018
-- Host        : localhost.localdomain running 64-bit unknown
-- Command     : write_vhdl -mode funcsim -nolib -force -file
--               /home/jhladik/Vivado_Projects/vga_simple/vga_simple.sim/sim_1/synth/func/xsim/vga_simple_func_synth.vhd
-- Design      : vga_simple
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity vga_simple is
  port (
    clk : in STD_LOGIC;
    vgaRed : out STD_LOGIC_VECTOR ( 3 downto 0 );
    vgaGreen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    vgaBlue : out STD_LOGIC_VECTOR ( 3 downto 0 );
    Hsync : out STD_LOGIC;
    Vsync : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of vga_simple : entity is true;
  attribute Ha : integer;
  attribute Ha of vga_simple : entity is 96;
  attribute Hb : integer;
  attribute Hb of vga_simple : entity is 144;
  attribute Hc : integer;
  attribute Hc of vga_simple : entity is 784;
  attribute Hd : integer;
  attribute Hd of vga_simple : entity is 800;
  attribute Va : integer;
  attribute Va of vga_simple : entity is 2;
  attribute Vb : integer;
  attribute Vb of vga_simple : entity is 35;
  attribute Vc : integer;
  attribute Vc of vga_simple : entity is 515;
  attribute Vd : integer;
  attribute Vd of vga_simple : entity is 525;
end vga_simple;

architecture STRUCTURE of vga_simple is
  signal Hactive_i_1_n_0 : STD_LOGIC;
  signal Hactive_reg_n_0 : STD_LOGIC;
  signal Hcount0 : STD_LOGIC;
  signal Hcount1 : STD_LOGIC;
  signal Hcount11_in : STD_LOGIC;
  signal \Hcount[9]_i_10_n_0\ : STD_LOGIC;
  signal \Hcount[9]_i_11_n_0\ : STD_LOGIC;
  signal \Hcount[9]_i_12_n_0\ : STD_LOGIC;
  signal \Hcount[9]_i_13_n_0\ : STD_LOGIC;
  signal \Hcount[9]_i_14_n_0\ : STD_LOGIC;
  signal \Hcount[9]_i_15_n_0\ : STD_LOGIC;
  signal \Hcount[9]_i_16_n_0\ : STD_LOGIC;
  signal \Hcount[9]_i_17_n_0\ : STD_LOGIC;
  signal \Hcount[9]_i_18_n_0\ : STD_LOGIC;
  signal \Hcount[9]_i_19_n_0\ : STD_LOGIC;
  signal \Hcount[9]_i_1_n_0\ : STD_LOGIC;
  signal \Hcount[9]_i_20_n_0\ : STD_LOGIC;
  signal \Hcount[9]_i_21_n_0\ : STD_LOGIC;
  signal \Hcount[9]_i_22_n_0\ : STD_LOGIC;
  signal \Hcount[9]_i_23_n_0\ : STD_LOGIC;
  signal \Hcount[9]_i_7_n_0\ : STD_LOGIC;
  signal \Hcount[9]_i_8_n_0\ : STD_LOGIC;
  signal \Hcount[9]_i_9_n_0\ : STD_LOGIC;
  signal \Hcount_reg[9]_i_3_n_1\ : STD_LOGIC;
  signal \Hcount_reg[9]_i_3_n_2\ : STD_LOGIC;
  signal \Hcount_reg[9]_i_3_n_3\ : STD_LOGIC;
  signal \Hcount_reg[9]_i_4_n_1\ : STD_LOGIC;
  signal \Hcount_reg[9]_i_4_n_2\ : STD_LOGIC;
  signal \Hcount_reg[9]_i_4_n_3\ : STD_LOGIC;
  signal \Hcount_reg[9]_i_5_n_1\ : STD_LOGIC;
  signal \Hcount_reg[9]_i_5_n_2\ : STD_LOGIC;
  signal \Hcount_reg[9]_i_5_n_3\ : STD_LOGIC;
  signal \Hcount_reg[9]_i_6_n_0\ : STD_LOGIC;
  signal \Hcount_reg[9]_i_6_n_1\ : STD_LOGIC;
  signal \Hcount_reg[9]_i_6_n_2\ : STD_LOGIC;
  signal \Hcount_reg[9]_i_6_n_3\ : STD_LOGIC;
  signal \Hcount_reg__0\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal Hsync_OBUF : STD_LOGIC;
  signal Hsync_i_1_n_0 : STD_LOGIC;
  signal Vactive_i_1_n_0 : STD_LOGIC;
  signal Vactive_reg_n_0 : STD_LOGIC;
  signal Vcount : STD_LOGIC;
  signal Vcount0 : STD_LOGIC;
  signal Vcount1 : STD_LOGIC;
  signal Vcount14_in : STD_LOGIC;
  signal \Vcount[3]_i_1_n_0\ : STD_LOGIC;
  signal \Vcount[4]_i_1_n_0\ : STD_LOGIC;
  signal \Vcount[5]_i_1_n_0\ : STD_LOGIC;
  signal \Vcount[6]_i_1_n_0\ : STD_LOGIC;
  signal \Vcount[7]_i_1_n_0\ : STD_LOGIC;
  signal \Vcount[8]_i_1_n_0\ : STD_LOGIC;
  signal \Vcount[9]_i_10_n_0\ : STD_LOGIC;
  signal \Vcount[9]_i_11_n_0\ : STD_LOGIC;
  signal \Vcount[9]_i_12_n_0\ : STD_LOGIC;
  signal \Vcount[9]_i_13_n_0\ : STD_LOGIC;
  signal \Vcount[9]_i_14_n_0\ : STD_LOGIC;
  signal \Vcount[9]_i_15_n_0\ : STD_LOGIC;
  signal \Vcount[9]_i_16_n_0\ : STD_LOGIC;
  signal \Vcount[9]_i_17_n_0\ : STD_LOGIC;
  signal \Vcount[9]_i_18_n_0\ : STD_LOGIC;
  signal \Vcount[9]_i_19_n_0\ : STD_LOGIC;
  signal \Vcount[9]_i_20_n_0\ : STD_LOGIC;
  signal \Vcount[9]_i_21_n_0\ : STD_LOGIC;
  signal \Vcount[9]_i_22_n_0\ : STD_LOGIC;
  signal \Vcount[9]_i_23_n_0\ : STD_LOGIC;
  signal \Vcount[9]_i_2_n_0\ : STD_LOGIC;
  signal \Vcount[9]_i_7_n_0\ : STD_LOGIC;
  signal \Vcount[9]_i_8_n_0\ : STD_LOGIC;
  signal \Vcount[9]_i_9_n_0\ : STD_LOGIC;
  signal \Vcount_reg[9]_i_3_n_0\ : STD_LOGIC;
  signal \Vcount_reg[9]_i_3_n_1\ : STD_LOGIC;
  signal \Vcount_reg[9]_i_3_n_2\ : STD_LOGIC;
  signal \Vcount_reg[9]_i_3_n_3\ : STD_LOGIC;
  signal \Vcount_reg[9]_i_4_n_1\ : STD_LOGIC;
  signal \Vcount_reg[9]_i_4_n_2\ : STD_LOGIC;
  signal \Vcount_reg[9]_i_4_n_3\ : STD_LOGIC;
  signal \Vcount_reg[9]_i_5_n_1\ : STD_LOGIC;
  signal \Vcount_reg[9]_i_5_n_2\ : STD_LOGIC;
  signal \Vcount_reg[9]_i_5_n_3\ : STD_LOGIC;
  signal \Vcount_reg[9]_i_6_n_1\ : STD_LOGIC;
  signal \Vcount_reg[9]_i_6_n_2\ : STD_LOGIC;
  signal \Vcount_reg[9]_i_6_n_3\ : STD_LOGIC;
  signal \Vcount_reg__0\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal Vsync_OBUF : STD_LOGIC;
  signal Vsync_i_1_n_0 : STD_LOGIC;
  signal clk_IBUF : STD_LOGIC;
  signal clk_IBUF_BUFG : STD_LOGIC;
  signal clockCount : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \clockCount[0]_i_1_n_0\ : STD_LOGIC;
  signal \clockCount[1]_i_1_n_0\ : STD_LOGIC;
  signal \line_counter[0]_i_1_n_0\ : STD_LOGIC;
  signal \line_counter[2]_i_1_n_0\ : STD_LOGIC;
  signal \line_counter[9]_i_2_n_0\ : STD_LOGIC;
  signal \line_counter[9]_i_3_n_0\ : STD_LOGIC;
  signal line_counter_reg : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal p_0_in : STD_LOGIC_VECTOR ( 9 downto 3 );
  signal \p_0_in__0\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \p_0_in__1\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \p_0_in__2\ : STD_LOGIC_VECTOR ( 9 downto 1 );
  signal pixel_clk_i_1_n_0 : STD_LOGIC;
  signal pixel_clk_reg_n_0 : STD_LOGIC;
  signal vgaBlue_OBUF : STD_LOGIC_VECTOR ( 0 to 0 );
  signal vgaGreen_OBUF : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \vgaGreen_OBUF[3]_inst_i_2_n_0\ : STD_LOGIC;
  signal vgaRed_OBUF : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \vgaRed_OBUF[3]_inst_i_2_n_0\ : STD_LOGIC;
  signal \vgaRed_OBUF[3]_inst_i_3_n_0\ : STD_LOGIC;
  signal \NLW_Hcount_reg[9]_i_3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_Hcount_reg[9]_i_4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_Hcount_reg[9]_i_5_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_Hcount_reg[9]_i_6_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_Vcount_reg[9]_i_3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_Vcount_reg[9]_i_4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_Vcount_reg[9]_i_5_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_Vcount_reg[9]_i_6_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \Hcount[1]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \Hcount[2]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \Hcount[3]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \Hcount[4]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \Hcount[6]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \Hcount[7]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \Hcount[8]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \Hcount[9]_i_2\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \Vcount[1]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \Vcount[2]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \Vcount[3]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \Vcount[4]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \Vcount[6]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \Vcount[7]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \Vcount[8]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \Vcount[9]_i_2\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \clockCount[1]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \line_counter[1]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \line_counter[2]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \line_counter[3]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \line_counter[4]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \line_counter[7]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \line_counter[8]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \line_counter[9]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of pixel_clk_i_1 : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \vgaBlue_OBUF[3]_inst_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \vgaGreen_OBUF[3]_inst_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \vgaRed_OBUF[3]_inst_i_3\ : label is "soft_lutpair7";
begin
Hactive_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CFC4"
    )
        port map (
      I0 => Hcount11_in,
      I1 => Hactive_reg_n_0,
      I2 => \Hcount_reg[9]_i_6_n_0\,
      I3 => Hcount1,
      O => Hactive_i_1_n_0
    );
Hactive_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixel_clk_reg_n_0,
      CE => '1',
      D => Hactive_i_1_n_0,
      Q => Hactive_reg_n_0,
      R => '0'
    );
\Hcount[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \Hcount_reg__0\(0),
      O => \p_0_in__0\(0)
    );
\Hcount[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Hcount_reg__0\(0),
      I1 => \Hcount_reg__0\(1),
      O => \p_0_in__0\(1)
    );
\Hcount[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \Hcount_reg__0\(0),
      I1 => \Hcount_reg__0\(1),
      I2 => \Hcount_reg__0\(2),
      O => \p_0_in__0\(2)
    );
\Hcount[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \Hcount_reg__0\(1),
      I1 => \Hcount_reg__0\(0),
      I2 => \Hcount_reg__0\(2),
      I3 => \Hcount_reg__0\(3),
      O => p_0_in(3)
    );
\Hcount[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \Hcount_reg__0\(2),
      I1 => \Hcount_reg__0\(0),
      I2 => \Hcount_reg__0\(1),
      I3 => \Hcount_reg__0\(3),
      I4 => \Hcount_reg__0\(4),
      O => p_0_in(4)
    );
\Hcount[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \Hcount_reg__0\(3),
      I1 => \Hcount_reg__0\(1),
      I2 => \Hcount_reg__0\(0),
      I3 => \Hcount_reg__0\(2),
      I4 => \Hcount_reg__0\(4),
      I5 => \Hcount_reg__0\(5),
      O => p_0_in(5)
    );
\Hcount[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Hcount[9]_i_7_n_0\,
      I1 => \Hcount_reg__0\(6),
      O => p_0_in(6)
    );
\Hcount[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \Hcount[9]_i_7_n_0\,
      I1 => \Hcount_reg__0\(6),
      I2 => \Hcount_reg__0\(7),
      O => p_0_in(7)
    );
\Hcount[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \Hcount_reg__0\(6),
      I1 => \Hcount[9]_i_7_n_0\,
      I2 => \Hcount_reg__0\(7),
      I3 => \Hcount_reg__0\(8),
      O => p_0_in(8)
    );
\Hcount[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => Hcount11_in,
      I1 => Hcount0,
      I2 => Hcount1,
      I3 => \Hcount_reg[9]_i_6_n_0\,
      O => \Hcount[9]_i_1_n_0\
    );
\Hcount[9]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1002020202020202"
    )
        port map (
      I0 => \Hcount_reg__0\(4),
      I1 => \Hcount_reg__0\(5),
      I2 => \Hcount_reg__0\(3),
      I3 => \Hcount_reg__0\(2),
      I4 => \Hcount_reg__0\(0),
      I5 => \Hcount_reg__0\(1),
      O => \Hcount[9]_i_10_n_0\
    );
\Hcount[9]_i_11\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \Hcount_reg__0\(0),
      I1 => \Hcount_reg__0\(1),
      I2 => \Hcount_reg__0\(2),
      O => \Hcount[9]_i_11_n_0\
    );
\Hcount[9]_i_12\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \Hcount_reg__0\(7),
      I1 => \Hcount[9]_i_7_n_0\,
      I2 => \Hcount_reg__0\(6),
      I3 => \Hcount_reg__0\(8),
      I4 => \Hcount_reg__0\(9),
      O => \Hcount[9]_i_12_n_0\
    );
\Hcount[9]_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2004"
    )
        port map (
      I0 => \Hcount_reg__0\(7),
      I1 => \Hcount_reg__0\(8),
      I2 => \Hcount_reg__0\(6),
      I3 => \Hcount[9]_i_7_n_0\,
      O => \Hcount[9]_i_13_n_0\
    );
\Hcount[9]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2004040404040404"
    )
        port map (
      I0 => \Hcount_reg__0\(4),
      I1 => \Hcount_reg__0\(5),
      I2 => \Hcount_reg__0\(3),
      I3 => \Hcount_reg__0\(2),
      I4 => \Hcount_reg__0\(0),
      I5 => \Hcount_reg__0\(1),
      O => \Hcount[9]_i_14_n_0\
    );
\Hcount[9]_i_15\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \Hcount_reg__0\(0),
      I1 => \Hcount_reg__0\(1),
      I2 => \Hcount_reg__0\(2),
      O => \Hcount[9]_i_15_n_0\
    );
\Hcount[9]_i_16\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80007FFF"
    )
        port map (
      I0 => \Hcount_reg__0\(7),
      I1 => \Hcount[9]_i_7_n_0\,
      I2 => \Hcount_reg__0\(6),
      I3 => \Hcount_reg__0\(8),
      I4 => \Hcount_reg__0\(9),
      O => \Hcount[9]_i_16_n_0\
    );
\Hcount[9]_i_17\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1002"
    )
        port map (
      I0 => \Hcount_reg__0\(7),
      I1 => \Hcount_reg__0\(8),
      I2 => \Hcount_reg__0\(6),
      I3 => \Hcount[9]_i_7_n_0\,
      O => \Hcount[9]_i_17_n_0\
    );
\Hcount[9]_i_18\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1002020202020202"
    )
        port map (
      I0 => \Hcount_reg__0\(4),
      I1 => \Hcount_reg__0\(5),
      I2 => \Hcount_reg__0\(3),
      I3 => \Hcount_reg__0\(2),
      I4 => \Hcount_reg__0\(0),
      I5 => \Hcount_reg__0\(1),
      O => \Hcount[9]_i_18_n_0\
    );
\Hcount[9]_i_19\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \Hcount_reg__0\(0),
      I1 => \Hcount_reg__0\(1),
      I2 => \Hcount_reg__0\(2),
      O => \Hcount[9]_i_19_n_0\
    );
\Hcount[9]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \Hcount_reg__0\(7),
      I1 => \Hcount[9]_i_7_n_0\,
      I2 => \Hcount_reg__0\(6),
      I3 => \Hcount_reg__0\(8),
      I4 => \Hcount_reg__0\(9),
      O => p_0_in(9)
    );
\Hcount[9]_i_20\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80007FFF"
    )
        port map (
      I0 => \Hcount_reg__0\(7),
      I1 => \Hcount[9]_i_7_n_0\,
      I2 => \Hcount_reg__0\(6),
      I3 => \Hcount_reg__0\(8),
      I4 => \Hcount_reg__0\(9),
      O => \Hcount[9]_i_20_n_0\
    );
\Hcount[9]_i_21\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0006"
    )
        port map (
      I0 => \Hcount_reg__0\(6),
      I1 => \Hcount[9]_i_7_n_0\,
      I2 => \Hcount_reg__0\(7),
      I3 => \Hcount_reg__0\(8),
      O => \Hcount[9]_i_21_n_0\
    );
\Hcount[9]_i_22\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2004040404040404"
    )
        port map (
      I0 => \Hcount_reg__0\(4),
      I1 => \Hcount_reg__0\(5),
      I2 => \Hcount_reg__0\(3),
      I3 => \Hcount_reg__0\(2),
      I4 => \Hcount_reg__0\(0),
      I5 => \Hcount_reg__0\(1),
      O => \Hcount[9]_i_22_n_0\
    );
\Hcount[9]_i_23\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \Hcount_reg__0\(0),
      I1 => \Hcount_reg__0\(1),
      I2 => \Hcount_reg__0\(2),
      O => \Hcount[9]_i_23_n_0\
    );
\Hcount[9]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \Hcount_reg__0\(5),
      I1 => \Hcount_reg__0\(3),
      I2 => \Hcount_reg__0\(1),
      I3 => \Hcount_reg__0\(0),
      I4 => \Hcount_reg__0\(2),
      I5 => \Hcount_reg__0\(4),
      O => \Hcount[9]_i_7_n_0\
    );
\Hcount[9]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \Hcount_reg__0\(7),
      I1 => \Hcount[9]_i_7_n_0\,
      I2 => \Hcount_reg__0\(6),
      I3 => \Hcount_reg__0\(8),
      I4 => \Hcount_reg__0\(9),
      O => \Hcount[9]_i_8_n_0\
    );
\Hcount[9]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2004"
    )
        port map (
      I0 => \Hcount_reg__0\(7),
      I1 => \Hcount_reg__0\(8),
      I2 => \Hcount_reg__0\(6),
      I3 => \Hcount[9]_i_7_n_0\,
      O => \Hcount[9]_i_9_n_0\
    );
\Hcount_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixel_clk_reg_n_0,
      CE => '1',
      D => \p_0_in__0\(0),
      Q => \Hcount_reg__0\(0),
      R => \Hcount[9]_i_1_n_0\
    );
\Hcount_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixel_clk_reg_n_0,
      CE => '1',
      D => \p_0_in__0\(1),
      Q => \Hcount_reg__0\(1),
      R => \Hcount[9]_i_1_n_0\
    );
\Hcount_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixel_clk_reg_n_0,
      CE => '1',
      D => \p_0_in__0\(2),
      Q => \Hcount_reg__0\(2),
      R => \Hcount[9]_i_1_n_0\
    );
\Hcount_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixel_clk_reg_n_0,
      CE => '1',
      D => p_0_in(3),
      Q => \Hcount_reg__0\(3),
      R => \Hcount[9]_i_1_n_0\
    );
\Hcount_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixel_clk_reg_n_0,
      CE => '1',
      D => p_0_in(4),
      Q => \Hcount_reg__0\(4),
      R => \Hcount[9]_i_1_n_0\
    );
\Hcount_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixel_clk_reg_n_0,
      CE => '1',
      D => p_0_in(5),
      Q => \Hcount_reg__0\(5),
      R => \Hcount[9]_i_1_n_0\
    );
\Hcount_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixel_clk_reg_n_0,
      CE => '1',
      D => p_0_in(6),
      Q => \Hcount_reg__0\(6),
      R => \Hcount[9]_i_1_n_0\
    );
\Hcount_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixel_clk_reg_n_0,
      CE => '1',
      D => p_0_in(7),
      Q => \Hcount_reg__0\(7),
      R => \Hcount[9]_i_1_n_0\
    );
\Hcount_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixel_clk_reg_n_0,
      CE => '1',
      D => p_0_in(8),
      Q => \Hcount_reg__0\(8),
      R => \Hcount[9]_i_1_n_0\
    );
\Hcount_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixel_clk_reg_n_0,
      CE => '1',
      D => p_0_in(9),
      Q => \Hcount_reg__0\(9),
      R => \Hcount[9]_i_1_n_0\
    );
\Hcount_reg[9]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => Hcount11_in,
      CO(2) => \Hcount_reg[9]_i_3_n_1\,
      CO(1) => \Hcount_reg[9]_i_3_n_2\,
      CO(0) => \Hcount_reg[9]_i_3_n_3\,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_Hcount_reg[9]_i_3_O_UNCONNECTED\(3 downto 0),
      S(3) => \Hcount[9]_i_8_n_0\,
      S(2) => \Hcount[9]_i_9_n_0\,
      S(1) => \Hcount[9]_i_10_n_0\,
      S(0) => \Hcount[9]_i_11_n_0\
    );
\Hcount_reg[9]_i_4\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => Hcount0,
      CO(2) => \Hcount_reg[9]_i_4_n_1\,
      CO(1) => \Hcount_reg[9]_i_4_n_2\,
      CO(0) => \Hcount_reg[9]_i_4_n_3\,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_Hcount_reg[9]_i_4_O_UNCONNECTED\(3 downto 0),
      S(3) => \Hcount[9]_i_12_n_0\,
      S(2) => \Hcount[9]_i_13_n_0\,
      S(1) => \Hcount[9]_i_14_n_0\,
      S(0) => \Hcount[9]_i_15_n_0\
    );
\Hcount_reg[9]_i_5\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => Hcount1,
      CO(2) => \Hcount_reg[9]_i_5_n_1\,
      CO(1) => \Hcount_reg[9]_i_5_n_2\,
      CO(0) => \Hcount_reg[9]_i_5_n_3\,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_Hcount_reg[9]_i_5_O_UNCONNECTED\(3 downto 0),
      S(3) => \Hcount[9]_i_16_n_0\,
      S(2) => \Hcount[9]_i_17_n_0\,
      S(1) => \Hcount[9]_i_18_n_0\,
      S(0) => \Hcount[9]_i_19_n_0\
    );
\Hcount_reg[9]_i_6\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \Hcount_reg[9]_i_6_n_0\,
      CO(2) => \Hcount_reg[9]_i_6_n_1\,
      CO(1) => \Hcount_reg[9]_i_6_n_2\,
      CO(0) => \Hcount_reg[9]_i_6_n_3\,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_Hcount_reg[9]_i_6_O_UNCONNECTED\(3 downto 0),
      S(3) => \Hcount[9]_i_20_n_0\,
      S(2) => \Hcount[9]_i_21_n_0\,
      S(1) => \Hcount[9]_i_22_n_0\,
      S(0) => \Hcount[9]_i_23_n_0\
    );
Hsync_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => Hsync_OBUF,
      O => Hsync
    );
Hsync_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFB00"
    )
        port map (
      I0 => Hcount11_in,
      I1 => Hcount0,
      I2 => Hcount1,
      I3 => Hsync_OBUF,
      I4 => \Hcount_reg[9]_i_6_n_0\,
      O => Hsync_i_1_n_0
    );
Hsync_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixel_clk_reg_n_0,
      CE => '1',
      D => Hsync_i_1_n_0,
      Q => Hsync_OBUF,
      R => '0'
    );
Vactive_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB0A"
    )
        port map (
      I0 => Vcount1,
      I1 => Vcount14_in,
      I2 => \Vcount_reg[9]_i_3_n_0\,
      I3 => Vactive_reg_n_0,
      O => Vactive_i_1_n_0
    );
Vactive_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => Hsync_OBUF,
      CE => '1',
      D => Vactive_i_1_n_0,
      Q => Vactive_reg_n_0,
      R => '0'
    );
\Vcount[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \Vcount_reg__0\(0),
      O => \p_0_in__1\(0)
    );
\Vcount[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Vcount_reg__0\(0),
      I1 => \Vcount_reg__0\(1),
      O => \p_0_in__1\(1)
    );
\Vcount[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \Vcount_reg__0\(1),
      I1 => \Vcount_reg__0\(0),
      I2 => \Vcount_reg__0\(2),
      O => \p_0_in__1\(2)
    );
\Vcount[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \Vcount_reg__0\(2),
      I1 => \Vcount_reg__0\(0),
      I2 => \Vcount_reg__0\(1),
      I3 => \Vcount_reg__0\(3),
      O => \Vcount[3]_i_1_n_0\
    );
\Vcount[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \Vcount_reg__0\(3),
      I1 => \Vcount_reg__0\(1),
      I2 => \Vcount_reg__0\(0),
      I3 => \Vcount_reg__0\(2),
      I4 => \Vcount_reg__0\(4),
      O => \Vcount[4]_i_1_n_0\
    );
\Vcount[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \Vcount_reg__0\(4),
      I1 => \Vcount_reg__0\(2),
      I2 => \Vcount_reg__0\(0),
      I3 => \Vcount_reg__0\(1),
      I4 => \Vcount_reg__0\(3),
      I5 => \Vcount_reg__0\(5),
      O => \Vcount[5]_i_1_n_0\
    );
\Vcount[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Vcount[9]_i_7_n_0\,
      I1 => \Vcount_reg__0\(6),
      O => \Vcount[6]_i_1_n_0\
    );
\Vcount[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \Vcount_reg__0\(6),
      I1 => \Vcount[9]_i_7_n_0\,
      I2 => \Vcount_reg__0\(7),
      O => \Vcount[7]_i_1_n_0\
    );
\Vcount[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \Vcount[9]_i_7_n_0\,
      I1 => \Vcount_reg__0\(6),
      I2 => \Vcount_reg__0\(7),
      I3 => \Vcount_reg__0\(8),
      O => \Vcount[8]_i_1_n_0\
    );
\Vcount[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => \Vcount_reg[9]_i_3_n_0\,
      I1 => Vcount0,
      I2 => Vcount14_in,
      I3 => Vcount1,
      O => Vcount
    );
\Vcount[9]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8001010101010101"
    )
        port map (
      I0 => \Vcount_reg__0\(4),
      I1 => \Vcount_reg__0\(5),
      I2 => \Vcount_reg__0\(3),
      I3 => \Vcount_reg__0\(1),
      I4 => \Vcount_reg__0\(0),
      I5 => \Vcount_reg__0\(2),
      O => \Vcount[9]_i_10_n_0\
    );
\Vcount[9]_i_11\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => \Vcount_reg__0\(1),
      I1 => \Vcount_reg__0\(2),
      I2 => \Vcount_reg__0\(0),
      O => \Vcount[9]_i_11_n_0\
    );
\Vcount[9]_i_12\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \Vcount[9]_i_7_n_0\,
      I1 => \Vcount_reg__0\(8),
      I2 => \Vcount_reg__0\(7),
      I3 => \Vcount_reg__0\(6),
      I4 => \Vcount_reg__0\(9),
      O => \Vcount[9]_i_12_n_0\
    );
\Vcount[9]_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8001"
    )
        port map (
      I0 => \Vcount_reg__0\(7),
      I1 => \Vcount_reg__0\(8),
      I2 => \Vcount_reg__0\(6),
      I3 => \Vcount[9]_i_7_n_0\,
      O => \Vcount[9]_i_13_n_0\
    );
\Vcount[9]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0110101010101010"
    )
        port map (
      I0 => \Vcount_reg__0\(4),
      I1 => \Vcount_reg__0\(5),
      I2 => \Vcount_reg__0\(3),
      I3 => \Vcount_reg__0\(1),
      I4 => \Vcount_reg__0\(0),
      I5 => \Vcount_reg__0\(2),
      O => \Vcount[9]_i_14_n_0\
    );
\Vcount[9]_i_15\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \Vcount_reg__0\(1),
      I1 => \Vcount_reg__0\(2),
      I2 => \Vcount_reg__0\(0),
      O => \Vcount[9]_i_15_n_0\
    );
\Vcount[9]_i_16\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \Vcount[9]_i_7_n_0\,
      I1 => \Vcount_reg__0\(8),
      I2 => \Vcount_reg__0\(7),
      I3 => \Vcount_reg__0\(6),
      I4 => \Vcount_reg__0\(9),
      O => \Vcount[9]_i_16_n_0\
    );
\Vcount[9]_i_17\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8001"
    )
        port map (
      I0 => \Vcount_reg__0\(7),
      I1 => \Vcount_reg__0\(8),
      I2 => \Vcount_reg__0\(6),
      I3 => \Vcount[9]_i_7_n_0\,
      O => \Vcount[9]_i_17_n_0\
    );
\Vcount[9]_i_18\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8001010101010101"
    )
        port map (
      I0 => \Vcount_reg__0\(4),
      I1 => \Vcount_reg__0\(5),
      I2 => \Vcount_reg__0\(3),
      I3 => \Vcount_reg__0\(1),
      I4 => \Vcount_reg__0\(0),
      I5 => \Vcount_reg__0\(2),
      O => \Vcount[9]_i_18_n_0\
    );
\Vcount[9]_i_19\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \Vcount_reg__0\(1),
      I1 => \Vcount_reg__0\(2),
      I2 => \Vcount_reg__0\(0),
      O => \Vcount[9]_i_19_n_0\
    );
\Vcount[9]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \Vcount[9]_i_7_n_0\,
      I1 => \Vcount_reg__0\(8),
      I2 => \Vcount_reg__0\(7),
      I3 => \Vcount_reg__0\(6),
      I4 => \Vcount_reg__0\(9),
      O => \Vcount[9]_i_2_n_0\
    );
\Vcount[9]_i_20\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"95555555"
    )
        port map (
      I0 => \Vcount_reg__0\(9),
      I1 => \Vcount_reg__0\(6),
      I2 => \Vcount_reg__0\(7),
      I3 => \Vcount_reg__0\(8),
      I4 => \Vcount[9]_i_7_n_0\,
      O => \Vcount[9]_i_20_n_0\
    );
\Vcount[9]_i_21\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8001"
    )
        port map (
      I0 => \Vcount_reg__0\(7),
      I1 => \Vcount_reg__0\(8),
      I2 => \Vcount_reg__0\(6),
      I3 => \Vcount[9]_i_7_n_0\,
      O => \Vcount[9]_i_21_n_0\
    );
\Vcount[9]_i_22\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2004040404040404"
    )
        port map (
      I0 => \Vcount_reg__0\(4),
      I1 => \Vcount_reg__0\(5),
      I2 => \Vcount_reg__0\(3),
      I3 => \Vcount_reg__0\(1),
      I4 => \Vcount_reg__0\(0),
      I5 => \Vcount_reg__0\(2),
      O => \Vcount[9]_i_22_n_0\
    );
\Vcount[9]_i_23\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \Vcount_reg__0\(1),
      I1 => \Vcount_reg__0\(2),
      I2 => \Vcount_reg__0\(0),
      O => \Vcount[9]_i_23_n_0\
    );
\Vcount[9]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \Vcount_reg__0\(4),
      I1 => \Vcount_reg__0\(2),
      I2 => \Vcount_reg__0\(0),
      I3 => \Vcount_reg__0\(1),
      I4 => \Vcount_reg__0\(3),
      I5 => \Vcount_reg__0\(5),
      O => \Vcount[9]_i_7_n_0\
    );
\Vcount[9]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"95555555"
    )
        port map (
      I0 => \Vcount_reg__0\(9),
      I1 => \Vcount_reg__0\(6),
      I2 => \Vcount_reg__0\(7),
      I3 => \Vcount_reg__0\(8),
      I4 => \Vcount[9]_i_7_n_0\,
      O => \Vcount[9]_i_8_n_0\
    );
\Vcount[9]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8001"
    )
        port map (
      I0 => \Vcount_reg__0\(7),
      I1 => \Vcount_reg__0\(8),
      I2 => \Vcount_reg__0\(6),
      I3 => \Vcount[9]_i_7_n_0\,
      O => \Vcount[9]_i_9_n_0\
    );
\Vcount_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => Hsync_OBUF,
      CE => '1',
      D => \p_0_in__1\(0),
      Q => \Vcount_reg__0\(0),
      R => Vcount
    );
\Vcount_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => Hsync_OBUF,
      CE => '1',
      D => \p_0_in__1\(1),
      Q => \Vcount_reg__0\(1),
      R => Vcount
    );
\Vcount_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => Hsync_OBUF,
      CE => '1',
      D => \p_0_in__1\(2),
      Q => \Vcount_reg__0\(2),
      R => Vcount
    );
\Vcount_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => Hsync_OBUF,
      CE => '1',
      D => \Vcount[3]_i_1_n_0\,
      Q => \Vcount_reg__0\(3),
      R => Vcount
    );
\Vcount_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => Hsync_OBUF,
      CE => '1',
      D => \Vcount[4]_i_1_n_0\,
      Q => \Vcount_reg__0\(4),
      R => Vcount
    );
\Vcount_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => Hsync_OBUF,
      CE => '1',
      D => \Vcount[5]_i_1_n_0\,
      Q => \Vcount_reg__0\(5),
      R => Vcount
    );
\Vcount_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => Hsync_OBUF,
      CE => '1',
      D => \Vcount[6]_i_1_n_0\,
      Q => \Vcount_reg__0\(6),
      R => Vcount
    );
\Vcount_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => Hsync_OBUF,
      CE => '1',
      D => \Vcount[7]_i_1_n_0\,
      Q => \Vcount_reg__0\(7),
      R => Vcount
    );
\Vcount_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => Hsync_OBUF,
      CE => '1',
      D => \Vcount[8]_i_1_n_0\,
      Q => \Vcount_reg__0\(8),
      R => Vcount
    );
\Vcount_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => Hsync_OBUF,
      CE => '1',
      D => \Vcount[9]_i_2_n_0\,
      Q => \Vcount_reg__0\(9),
      R => Vcount
    );
\Vcount_reg[9]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \Vcount_reg[9]_i_3_n_0\,
      CO(2) => \Vcount_reg[9]_i_3_n_1\,
      CO(1) => \Vcount_reg[9]_i_3_n_2\,
      CO(0) => \Vcount_reg[9]_i_3_n_3\,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_Vcount_reg[9]_i_3_O_UNCONNECTED\(3 downto 0),
      S(3) => \Vcount[9]_i_8_n_0\,
      S(2) => \Vcount[9]_i_9_n_0\,
      S(1) => \Vcount[9]_i_10_n_0\,
      S(0) => \Vcount[9]_i_11_n_0\
    );
\Vcount_reg[9]_i_4\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => Vcount0,
      CO(2) => \Vcount_reg[9]_i_4_n_1\,
      CO(1) => \Vcount_reg[9]_i_4_n_2\,
      CO(0) => \Vcount_reg[9]_i_4_n_3\,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_Vcount_reg[9]_i_4_O_UNCONNECTED\(3 downto 0),
      S(3) => \Vcount[9]_i_12_n_0\,
      S(2) => \Vcount[9]_i_13_n_0\,
      S(1) => \Vcount[9]_i_14_n_0\,
      S(0) => \Vcount[9]_i_15_n_0\
    );
\Vcount_reg[9]_i_5\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => Vcount14_in,
      CO(2) => \Vcount_reg[9]_i_5_n_1\,
      CO(1) => \Vcount_reg[9]_i_5_n_2\,
      CO(0) => \Vcount_reg[9]_i_5_n_3\,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_Vcount_reg[9]_i_5_O_UNCONNECTED\(3 downto 0),
      S(3) => \Vcount[9]_i_16_n_0\,
      S(2) => \Vcount[9]_i_17_n_0\,
      S(1) => \Vcount[9]_i_18_n_0\,
      S(0) => \Vcount[9]_i_19_n_0\
    );
\Vcount_reg[9]_i_6\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => Vcount1,
      CO(2) => \Vcount_reg[9]_i_6_n_1\,
      CO(1) => \Vcount_reg[9]_i_6_n_2\,
      CO(0) => \Vcount_reg[9]_i_6_n_3\,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_Vcount_reg[9]_i_6_O_UNCONNECTED\(3 downto 0),
      S(3) => \Vcount[9]_i_20_n_0\,
      S(2) => \Vcount[9]_i_21_n_0\,
      S(1) => \Vcount[9]_i_22_n_0\,
      S(0) => \Vcount[9]_i_23_n_0\
    );
Vsync_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => Vsync_OBUF,
      O => Vsync
    );
Vsync_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFEF00"
    )
        port map (
      I0 => Vcount14_in,
      I1 => Vcount1,
      I2 => Vcount0,
      I3 => Vsync_OBUF,
      I4 => \Vcount_reg[9]_i_3_n_0\,
      O => Vsync_i_1_n_0
    );
Vsync_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => Hsync_OBUF,
      CE => '1',
      D => Vsync_i_1_n_0,
      Q => Vsync_OBUF,
      R => '0'
    );
clk_IBUF_BUFG_inst: unisim.vcomponents.BUFG
     port map (
      I => clk_IBUF,
      O => clk_IBUF_BUFG
    );
clk_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => clk,
      O => clk_IBUF
    );
\clockCount[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => clockCount(0),
      I1 => clockCount(1),
      O => \clockCount[0]_i_1_n_0\
    );
\clockCount[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => clockCount(0),
      I1 => clockCount(1),
      O => \clockCount[1]_i_1_n_0\
    );
\clockCount_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \clockCount[0]_i_1_n_0\,
      Q => clockCount(0),
      R => '0'
    );
\clockCount_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \clockCount[1]_i_1_n_0\,
      Q => clockCount(1),
      R => '0'
    );
\line_counter[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => line_counter_reg(0),
      O => \line_counter[0]_i_1_n_0\
    );
\line_counter[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => line_counter_reg(0),
      I1 => line_counter_reg(1),
      O => \p_0_in__2\(1)
    );
\line_counter[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => line_counter_reg(1),
      I1 => line_counter_reg(0),
      I2 => line_counter_reg(2),
      O => \line_counter[2]_i_1_n_0\
    );
\line_counter[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => line_counter_reg(0),
      I1 => line_counter_reg(1),
      I2 => line_counter_reg(2),
      I3 => line_counter_reg(3),
      O => \p_0_in__2\(3)
    );
\line_counter[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => line_counter_reg(3),
      I1 => line_counter_reg(2),
      I2 => line_counter_reg(1),
      I3 => line_counter_reg(0),
      I4 => line_counter_reg(4),
      O => \p_0_in__2\(4)
    );
\line_counter[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => line_counter_reg(4),
      I1 => line_counter_reg(0),
      I2 => line_counter_reg(1),
      I3 => line_counter_reg(2),
      I4 => line_counter_reg(3),
      I5 => line_counter_reg(5),
      O => \p_0_in__2\(5)
    );
\line_counter[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \line_counter[9]_i_3_n_0\,
      I1 => line_counter_reg(6),
      O => \p_0_in__2\(6)
    );
\line_counter[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => line_counter_reg(6),
      I1 => \line_counter[9]_i_3_n_0\,
      I2 => line_counter_reg(7),
      O => \p_0_in__2\(7)
    );
\line_counter[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \line_counter[9]_i_3_n_0\,
      I1 => line_counter_reg(6),
      I2 => line_counter_reg(7),
      I3 => line_counter_reg(8),
      O => \p_0_in__2\(8)
    );
\line_counter[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \line_counter[9]_i_3_n_0\,
      I1 => line_counter_reg(8),
      I2 => line_counter_reg(7),
      I3 => line_counter_reg(6),
      I4 => line_counter_reg(9),
      O => \p_0_in__2\(9)
    );
\line_counter[9]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Vsync_OBUF,
      O => \line_counter[9]_i_2_n_0\
    );
\line_counter[9]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => line_counter_reg(4),
      I1 => line_counter_reg(0),
      I2 => line_counter_reg(1),
      I3 => line_counter_reg(2),
      I4 => line_counter_reg(3),
      I5 => line_counter_reg(5),
      O => \line_counter[9]_i_3_n_0\
    );
\line_counter_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Hsync_OBUF,
      CE => Vactive_reg_n_0,
      CLR => \line_counter[9]_i_2_n_0\,
      D => \line_counter[0]_i_1_n_0\,
      Q => line_counter_reg(0)
    );
\line_counter_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Hsync_OBUF,
      CE => Vactive_reg_n_0,
      CLR => \line_counter[9]_i_2_n_0\,
      D => \p_0_in__2\(1),
      Q => line_counter_reg(1)
    );
\line_counter_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Hsync_OBUF,
      CE => Vactive_reg_n_0,
      CLR => \line_counter[9]_i_2_n_0\,
      D => \line_counter[2]_i_1_n_0\,
      Q => line_counter_reg(2)
    );
\line_counter_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Hsync_OBUF,
      CE => Vactive_reg_n_0,
      CLR => \line_counter[9]_i_2_n_0\,
      D => \p_0_in__2\(3),
      Q => line_counter_reg(3)
    );
\line_counter_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Hsync_OBUF,
      CE => Vactive_reg_n_0,
      CLR => \line_counter[9]_i_2_n_0\,
      D => \p_0_in__2\(4),
      Q => line_counter_reg(4)
    );
\line_counter_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Hsync_OBUF,
      CE => Vactive_reg_n_0,
      CLR => \line_counter[9]_i_2_n_0\,
      D => \p_0_in__2\(5),
      Q => line_counter_reg(5)
    );
\line_counter_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Hsync_OBUF,
      CE => Vactive_reg_n_0,
      CLR => \line_counter[9]_i_2_n_0\,
      D => \p_0_in__2\(6),
      Q => line_counter_reg(6)
    );
\line_counter_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Hsync_OBUF,
      CE => Vactive_reg_n_0,
      CLR => \line_counter[9]_i_2_n_0\,
      D => \p_0_in__2\(7),
      Q => line_counter_reg(7)
    );
\line_counter_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Hsync_OBUF,
      CE => Vactive_reg_n_0,
      CLR => \line_counter[9]_i_2_n_0\,
      D => \p_0_in__2\(8),
      Q => line_counter_reg(8)
    );
\line_counter_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Hsync_OBUF,
      CE => Vactive_reg_n_0,
      CLR => \line_counter[9]_i_2_n_0\,
      D => \p_0_in__2\(9),
      Q => line_counter_reg(9)
    );
pixel_clk_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B4"
    )
        port map (
      I0 => clockCount(0),
      I1 => clockCount(1),
      I2 => pixel_clk_reg_n_0,
      O => pixel_clk_i_1_n_0
    );
pixel_clk_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => pixel_clk_i_1_n_0,
      Q => pixel_clk_reg_n_0,
      R => '0'
    );
\vgaBlue_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => vgaBlue_OBUF(0),
      O => vgaBlue(0)
    );
\vgaBlue_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => vgaBlue_OBUF(0),
      O => vgaBlue(1)
    );
\vgaBlue_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => vgaBlue_OBUF(0),
      O => vgaBlue(2)
    );
\vgaBlue_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => vgaBlue_OBUF(0),
      O => vgaBlue(3)
    );
\vgaBlue_OBUF[3]_inst_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => line_counter_reg(2),
      I1 => Hactive_reg_n_0,
      I2 => Vactive_reg_n_0,
      I3 => \vgaGreen_OBUF[3]_inst_i_2_n_0\,
      O => vgaBlue_OBUF(0)
    );
\vgaGreen_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => vgaGreen_OBUF(0),
      O => vgaGreen(0)
    );
\vgaGreen_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => vgaGreen_OBUF(0),
      O => vgaGreen(1)
    );
\vgaGreen_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => vgaGreen_OBUF(0),
      O => vgaGreen(2)
    );
\vgaGreen_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => vgaGreen_OBUF(0),
      O => vgaGreen(3)
    );
\vgaGreen_OBUF[3]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"808080C0"
    )
        port map (
      I0 => \vgaGreen_OBUF[3]_inst_i_2_n_0\,
      I1 => Hactive_reg_n_0,
      I2 => Vactive_reg_n_0,
      I3 => line_counter_reg(0),
      I4 => line_counter_reg(2),
      O => vgaGreen_OBUF(0)
    );
\vgaGreen_OBUF[3]_inst_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFEFFFEFFFE"
    )
        port map (
      I0 => line_counter_reg(9),
      I1 => line_counter_reg(8),
      I2 => line_counter_reg(3),
      I3 => \vgaRed_OBUF[3]_inst_i_3_n_0\,
      I4 => line_counter_reg(1),
      I5 => line_counter_reg(0),
      O => \vgaGreen_OBUF[3]_inst_i_2_n_0\
    );
\vgaRed_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => vgaRed_OBUF(0),
      O => vgaRed(0)
    );
\vgaRed_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => vgaRed_OBUF(0),
      O => vgaRed(1)
    );
\vgaRed_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => vgaRed_OBUF(0),
      O => vgaRed(2)
    );
\vgaRed_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => vgaRed_OBUF(0),
      O => vgaRed(3)
    );
\vgaRed_OBUF[3]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C08080C0808080C0"
    )
        port map (
      I0 => \vgaRed_OBUF[3]_inst_i_2_n_0\,
      I1 => Hactive_reg_n_0,
      I2 => Vactive_reg_n_0,
      I3 => line_counter_reg(2),
      I4 => line_counter_reg(1),
      I5 => line_counter_reg(0),
      O => vgaRed_OBUF(0)
    );
\vgaRed_OBUF[3]_inst_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \vgaRed_OBUF[3]_inst_i_3_n_0\,
      I1 => line_counter_reg(3),
      I2 => line_counter_reg(8),
      I3 => line_counter_reg(9),
      O => \vgaRed_OBUF[3]_inst_i_2_n_0\
    );
\vgaRed_OBUF[3]_inst_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => line_counter_reg(5),
      I1 => line_counter_reg(4),
      I2 => line_counter_reg(7),
      I3 => line_counter_reg(6),
      O => \vgaRed_OBUF[3]_inst_i_3_n_0\
    );
end STRUCTURE;
