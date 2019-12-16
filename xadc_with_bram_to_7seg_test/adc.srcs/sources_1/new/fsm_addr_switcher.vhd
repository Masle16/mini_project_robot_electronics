----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12/12/2019 01:21:39 PM
-- Design Name: 
-- Module Name: fsm_addr_switcher - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity fsm_addr_switcher is
    Port ( clk, en, rst : in STD_LOGIC;
           data_from_addr : in STD_LOGIC_VECTOR (31 downto 0);
           addr : out STD_LOGIC_VECTOR (31 downto 0);
           pwm_inc : out STD_LOGIC_VECTOR (1 downto 0);
           bat_lvl : out STD_LOGIC);
end fsm_addr_switcher;

architecture Behavioral of fsm_addr_switcher is

    -- Architecture Declarations
    TYPE STATE_TYPE IS (s0, s1, s2, s3); -- Define the states
    
    signal sig_addr : unsigned(31 downto 0) := (others => '0');
    
    -- Declare current and next state signals
    SIGNAL current_state : STATE_TYPE; -- Create a signal that uses the different states
    SIGNAL next_state    : STATE_TYPE;
begin

clocked : process(clk, rst)
begin
    if( rst = '1' ) then
        current_state <= s0;
    elsif ( rising_edge( clk ) ) then
        current_state <= next_state;
        -- Default assigment ot internals
        
        -- Combined actions of internal signals only (e.g. counter)
        -- COUNTER SHOULD BE IN HERE INSTEAD
    end if;
end process clocked;

nextstate : process(current_state)
begin
    case current_state is
    when s0 =>
        sig_addr <= (others => '0');
        next_state <= s1;
    when s1 => -- Waiting for addr to update data
        next_state <= s2; 
    when s2 =>
        sig_addr <= sig_addr + x"4";
        next_state <= s3;
    when s3 =>
        next_state <= s0;
    when others =>
        next_state <= s0;
    end case;
    
end process nextstate;

output : process(current_state)
begin
    -- Default assignment

    -- Default assignment to internals
    
    -- Combined actions
    case current_state is
    when s0 =>
       bat_lvl <= data_from_addr(0);
    when s1 =>
        -- Waiting for addr to update data
    when s2 =>
       pwm_inc <= data_from_addr(1 downto 0);
    when s3 =>
        -- Waiting for addr to update data
    when others =>
       
    end case;
end process;

-- Concurrent statements
addr <= STD_LOGIC_VECTOR(sig_addr);
end Behavioral;
