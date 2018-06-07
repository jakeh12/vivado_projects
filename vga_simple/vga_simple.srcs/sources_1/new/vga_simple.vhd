--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.all;
--------------------------------------------------------------------------------
ENTITY vga_simple IS
    GENERIC (
        Ha: INTEGER := 96;
        Hb: INTEGER := 144;
        Hc: INTEGER := 784;
        Hd: INTEGER := 800;
        Va: INTEGER := 2;
        Vb: INTEGER := 35;
        Vc: INTEGER := 515;
        Vd: INTEGER := 525
    );
    PORT (
        clk: IN STD_LOGIC;
        vgaRed: OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
        vgaGreen: OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
        vgaBlue: OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
        Hsync: BUFFER STD_LOGIC;
        Vsync: BUFFER STD_LOGIC
    );
END vga_simple;
--------------------------------------------------------------------------------
ARCHITECTURE vga_simple OF vga_simple IS
    SIGNAL Hactive, Vactive, dena, pixel_clk: STD_LOGIC;
BEGIN
    ----------------------------------------------------------------------------
    -- CONTROL GENERATOR
    ----------------------------------------------------------------------------
    -- Create pixel clock
    PROCESS (clk)
        VARIABLE clockCount: INTEGER RANGE 0 TO 2;
    BEGIN
        IF (RISING_EDGE(clk)) THEN
            clockCount := clockCount + 1;
            IF (clockCount = 2) THEN
                clockCount := 0;
                pixel_clk <= NOT pixel_clk;
            END IF; 
        END IF;
    END PROCESS;
    -- Hsync generation
    PROCESS (pixel_clk)
        VARIABLE Hcount: INTEGER RANGE 0 TO Hd;
    BEGIN
        IF (RISING_EDGE(pixel_clk)) THEN
            Hcount := Hcount + 1;
            IF (Hcount = Ha) THEN
                Hsync <= '1';
            ELSIF (Hcount = Hb) THEN
                Hactive <= '1';
            ELSIF (Hcount = Hc) THEN
                Hactive <= '0';
            ELSIF (Hcount = Hd) THEN
                Hsync <= '0';
                Hcount := 0;
            END IF;
        END IF;
    END PROCESS;
    -- Vsync generation
    PROCESS (Hsync)
        VARIABLE Vcount: INTEGER RANGE 0 TO Vd;
    BEGIN
        IF (FALLING_EDGE(Hsync)) THEN
            Vcount := Vcount + 1;
            IF (Vcount = Va) THEN
                Vsync <= '1';
            ELSIF (Vcount = Vb) THEN
                Vactive <= '1';
            ELSIF (Vcount = Vc) THEN
                Vactive <= '0';
            ELSIF (Vcount = Vd) THEN
                Vsync <= '0';
                Vcount := 0;
            END IF;
        END IF;
    END PROCESS;
    -- Display enable
    dena <= Hactive AND Vactive;
    ----------------------------------------------------------------------------
    -- IMAGE GENERATOR
    ----------------------------------------------------------------------------
    PROCESS (Hsync, Vsync, Vactive, dena)
        VARIABLE line_counter: INTEGER RANGE 0 TO Vc;
    BEGIN
        IF (Vsync = '0') THEN
            line_counter := 0;
        ELSIF (RISING_EDGE(Hsync)) THEN
            IF (Vactive = '1') THEN
                line_counter := line_counter + 1;
            END IF;
        END IF;
        IF (dena = '1') THEN
            IF (line_counter > 0 AND line_counter <= 160) THEN
                vgaRed <= (OTHERS => '1');
                vgaGreen <= (OTHERS => '0');
                vgaBlue <= (OTHERS => '0');
            ELSIF (line_counter > 160 AND line_counter <= 320) THEN
                vgaRed <= (OTHERS => '0');
                vgaGreen <= (OTHERS => '1');
                vgaBlue <= (OTHERS => '0');
            ELSE
                vgaRed <= (OTHERS => '0');
                vgaGreen <= (OTHERS => '0');
                vgaBlue <= (OTHERS => '1');
            END IF;
        ELSE
            vgaRed <= (OTHERS => '0');
            vgaGreen <= (OTHERS => '0');
            vgaBlue <= (OTHERS => '0');
        END IF;
    END PROCESS;
END vga_simple;
--------------------------------------------------------------------------------
