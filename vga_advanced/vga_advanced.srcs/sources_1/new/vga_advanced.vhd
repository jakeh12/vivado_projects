--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.all;
--------------------------------------------------------------------------------
ENTITY vga_advanced IS
    PORT (
        clk: IN STD_LOGIC;
        vgaRed: OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
        vgaGreen: OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
        vgaBlue: OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
        Hsync: BUFFER STD_LOGIC;
        Vsync: BUFFER STD_LOGIC
    );
END vga_advanced;
--------------------------------------------------------------------------------
ARCHITECTURE structural OF vga_advanced IS

    component vga is
        PORT (
            in_clk: IN STD_LOGIC;
            out_red: OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
            out_green: OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
            out_blue: OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
            buf_h_sync: BUFFER STD_LOGIC;
            buf_v_sync: BUFFER STD_LOGIC
        );
    end component;

BEGIN
    
    vga_0: vga PORT MAP (
        in_clk => clk,
        out_red => vgaRed,
        out_green => vgaGreen,
        out_blue => vgaBlue,
        buf_h_sync => Hsync,
        buf_v_sync => Vsync
    );
    
END structural;
--------------------------------------------------------------------------------
