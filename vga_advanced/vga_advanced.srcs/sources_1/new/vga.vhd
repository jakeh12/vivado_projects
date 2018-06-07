--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.all;
--------------------------------------------------------------------------------
ENTITY vga IS
    GENERIC (
        -- following constants are for VGA mode (640x480@60)
        c_h_pulse: INTEGER := 96;
        c_h_back_porch: INTEGER := 48;
        c_h_active: INTEGER := 640;
        c_h_front_porch: INTEGER := 16;
        c_v_pulse: INTEGER := 2;
        c_v_back_porch: INTEGER := 33;
        c_v_active: INTEGER := 480;
        c_v_front_porch: INTEGER := 10
    );
    PORT (
        in_clk: IN STD_LOGIC;
        out_red: OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
        out_green: OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
        out_blue: OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
        buf_h_sync: BUFFER STD_LOGIC;
        buf_v_sync: BUFFER STD_LOGIC
    );
END vga;
--------------------------------------------------------------------------------
ARCHITECTURE behavioral OF vga IS
    SIGNAL s_h_active: STD_LOGIC := '0';
    SIGNAL s_v_active: STD_LOGIC := '0';
    SIGNAL s_display_enable: STD_LOGIC := '0';
    SIGNAL s_pixel_clk: STD_LOGIC := '0';
BEGIN
    ----------------------------------------------------------------------------
    -- CONTROL GENERATOR
    ----------------------------------------------------------------------------
    -- create pixel clock
    PROCESS (in_clk)
        VARIABLE v_clock_count: INTEGER RANGE 0 TO 2;
    BEGIN
        IF (RISING_EDGE(in_clk)) THEN
            v_clock_count := v_clock_count + 1;
            IF (v_clock_count = 2) THEN
                v_clock_count := 0;
                s_pixel_clk <= NOT s_pixel_clk;
            END IF;
        END IF;
    END PROCESS;
    -- Hsync generation
    PROCESS (s_pixel_clk)
        VARIABLE v_h_count: INTEGER RANGE 0 TO (c_h_pulse + c_h_back_porch + c_h_active + c_h_front_porch);
    BEGIN
        IF (RISING_EDGE(s_pixel_clk)) THEN
            v_h_count := v_h_count + 1;
            IF (v_h_count = c_h_pulse) THEN
                buf_h_sync <= '1';
            ELSIF (v_h_count = (c_h_pulse + c_h_back_porch)) THEN
                s_h_active <= '1';
            ELSIF (v_h_count = (c_h_pulse + c_h_back_porch + c_h_active)) THEN
                s_h_active <= '0';
            ELSIF (v_h_count = (c_h_pulse + c_h_back_porch + c_h_active + c_h_front_porch)) THEN
                buf_h_sync <= '0';
                v_h_count := 0;
            END IF;
        END IF;
    END PROCESS;
    -- Vsync generation
    PROCESS (buf_h_sync)
        VARIABLE v_v_count: INTEGER RANGE 0 TO (c_v_pulse + c_v_back_porch + c_v_active + c_v_front_porch);
    BEGIN
        IF (FALLING_EDGE(buf_h_sync)) THEN
            v_v_count := v_v_count + 1;
            IF (v_v_count = c_v_pulse) THEN
                buf_v_sync <= '1';
            ELSIF (v_v_count = (c_v_pulse + c_v_back_porch)) THEN
                s_v_active <= '1';
            ELSIF (v_v_count = (c_v_pulse + c_v_back_porch + c_v_active)) THEN
                s_v_active <= '0';
            ELSIF (v_v_count = (c_v_pulse + c_v_back_porch + c_v_active + c_v_front_porch)) THEN
                buf_v_sync <= '0';
                v_v_count := 0;
            END IF;
        END IF;
    END PROCESS;
    -- Display enable
    s_display_enable <= s_h_active AND s_v_active;
    ----------------------------------------------------------------------------
    -- IMAGE GENERATOR
    ----------------------------------------------------------------------------
    PROCESS (buf_h_sync, buf_v_sync, s_v_active, s_display_enable)
        VARIABLE v_line_counter: INTEGER RANGE 0 TO (c_v_pulse + c_v_back_porch + c_v_active);
    BEGIN
        IF (buf_v_sync = '0') THEN
            v_line_counter := 0;
        ELSIF (RISING_EDGE(buf_h_sync)) THEN
            IF (s_v_active = '1') THEN
                v_line_counter := v_line_counter + 1;
            END IF;
        END IF;
        IF (s_display_enable = '1') THEN
            IF (v_line_counter > 0 AND v_line_counter <= 160) THEN
                out_red <= (OTHERS => '1');
                out_green <= (OTHERS => '0');
                out_blue <= (OTHERS => '0');
            ELSIF (v_line_counter > 160 AND v_line_counter <= 320) THEN
                out_red <= (OTHERS => '0');
                out_green <= (OTHERS => '1');
                out_blue <= (OTHERS => '0');
            ELSE
                out_red <= (OTHERS => '0');
                out_green <= (OTHERS => '0');
                out_blue <= (OTHERS => '1');
            END IF;
        ELSE
            out_red <= (OTHERS => '0');
            out_green <= (OTHERS => '0');
            out_blue <= (OTHERS => '0');
        END IF;
    END PROCESS;
END behavioral;
--------------------------------------------------------------------------------
