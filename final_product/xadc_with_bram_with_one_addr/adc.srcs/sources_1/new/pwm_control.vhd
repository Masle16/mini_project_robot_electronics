----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 15.12.2019 12:18:22
-- Design Name: 
-- Module Name: pwm_control - Behavioral
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

entity pwm_control is
    Port ( pwm_inc : in STD_LOGIC_VECTOR (1 downto 0);
           clk_inc : in STD_LOGIC;
           dutyCycleVal : out STD_LOGIC_VECTOR (12 downto 0));
end pwm_control;

architecture Behavioral of pwm_control is
signal count_sig: unsigned(30 downto 0) := (others => '0');
signal dutyCycleVal_sig : unsigned(12 downto 0) := "0101110001000"; -- start at 2500 (PWM OFF)
begin

process(clk_inc)
begin

    if ( rising_edge(clk_inc) ) then
        count_sig <= count_sig + 1;
    end if;

    -- if 10 [ms] have passed evaluate
    if ( count_sig >= 100000 ) then
        if ( pwm_inc = "01" ) then -- and dutyCycleVal_sig < 5000
            dutyCycleVal_sig <= dutyCycleVal_sig + 1; -- DECREASE PWM
        elsif ( pwm_inc = "10" ) then -- and dutyCycleVal_sig > 0
            dutyCycleVal_sig <= dutyCycleVal_sig - 1; -- INCREASE PWM
        end if;
        count_sig <= (others => '0');
    end if;

end process;

dutyCycleVal <= std_logic_vector(dutyCycleVal_sig);


end Behavioral;
