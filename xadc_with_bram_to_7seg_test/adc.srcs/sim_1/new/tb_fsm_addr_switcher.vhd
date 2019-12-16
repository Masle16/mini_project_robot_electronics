library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity tb_fsm_addr_switcher is
--  Port ( );
end tb_fsm_addr_switcher;

architecture Behavioral of tb_fsm_addr_switcher is

component fsm_addr_switcher is
    Port ( clk, en, rst : in STD_LOGIC;
           data_from_addr : in STD_LOGIC_VECTOR (31 downto 0);
           addr : out STD_LOGIC_VECTOR (31 downto 0);
           pwm_inc : out STD_LOGIC_VECTOR (1 downto 0);
           bat_lvl : out STD_LOGIC);
end component;
------------------------------------------------------------------------------
-- Defining signals for the simulation
------------------------------------------------------------------------------
    -------------------fsm_addr_switcher---------------------
    signal clk_tb            : STD_LOGIC;
    signal en_tb             : STD_LOGIC;
    signal rst_tb            : STD_LOGIC;
    signal data_from_addr_tb : STD_LOGIC_VECTOR (31 downto 0);
    signal addr_tb           : STD_LOGIC_VECTOR (31 downto 0);
    signal pwm_inc_tb        : STD_LOGIC_VECTOR (1 downto 0);
    signal bat_lvl_tb        : STD_LOGIC; 
    
    ----------------------sim bram---------------------------
    signal b_ram_addr       : STD_LOGIC_VECTOR (31 downto 0);
    signal b_ram_data       : STD_LOGIC_VECTOR (31 downto 0);

    
    -- Clock period definitions
    constant clk_period     : time := 8 ns;

begin

------------------------------------------------------------------------------
-- Mapping keypad_enc_wrapper module to simulations signals
------------------------------------------------------------------------------

mapping_fsm_addr_switcher: fsm_addr_switcher PORT MAP(
            clk            => clk_tb,
            en             => en_tb,
            rst            => rst_tb,
            data_from_addr => data_from_addr_tb,
            addr           => addr_tb,
            pwm_inc        => pwm_inc_tb,
            bat_lvl        => bat_lvl_tb);

------------------------------------------------------------------------------
-- Create a simulated clk in a process
------------------------------------------------------------------------------
   -- Clock process definitions( clock with 50% duty cycle is generated here.
   process
   begin
        clk_tb <= '0';
        wait for clk_period/2;  --for 4 ns signal is '0'.
        clk_tb <= '1';
        wait for clk_period/2;  --for next 4 ns signal is '1'.
   end process;
   
------------------------------------------------------------------------------
-- Process for simulated bram
------------------------------------------------------------------------------  

--    process
--    begin
--        if (b_ram_addr = x"0") then
--            wait for 2*clk_period;
--            b_ram_data <= "00000000000000000000000000000010";
--        elsif (b_ram_addr = x"4") then
--            wait for 2*clk_period;
--            b_ram_data <= "00000000000000000000000000000001";
--        end if;
--    end process;

------------------------------------------------------------------------------
-- Process for fsm
------------------------------------------------------------------------------
    process
    begin
        wait for 2*clk_period;
        en_tb <= '1';
        rst_tb <= '1';
        wait for clk_period;
        rst_tb <= '0';
        wait;
    
    end process;
    
--b_ram_addr <= addr_tb;
--data_from_addr_tb <= b_ram_data;

end Behavioral;
