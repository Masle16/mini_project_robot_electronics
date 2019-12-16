----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/05/2019 10:34:32 AM
-- Design Name: 
-- Module Name: seg_7_driver - Behavioral
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity seg_7_driver is
    Port ( BCD     : in STD_LOGIC_VECTOR (3 downto 0);
           en      : in STD_LOGIC;
           LED_out : out STD_LOGIC_VECTOR (6 downto 0));
end seg_7_driver;

architecture Behavioral of seg_7_driver is

begin

process(BCD, en)
begin
    if( en = '1' ) then
        case BCD is
            when "0000" => LED_out <= "1111110"; -- "0"     
            when "0001" => LED_out <= "0110000"; -- "1" 
            when "0010" => LED_out <= "1101101"; -- "2" 
            when "0011" => LED_out <= "1111001"; -- "3" 
            when "0100" => LED_out <= "0110011"; -- "4" 
            when "0101" => LED_out <= "1011011"; -- "5" 
            when "0110" => LED_out <= "1011111"; -- "6" 
            when "0111" => LED_out <= "1110000"; -- "7" 
            when "1000" => LED_out <= "1111111"; -- "8"     
            when "1001" => LED_out <= "1111011"; -- "9" 
            when "1010" => LED_out <= "1111101"; -- a
            when "1011" => LED_out <= "0011111"; -- b
            when "1100" => LED_out <= "1001110"; -- C
            when "1101" => LED_out <= "0111101"; -- d
            when "1110" => LED_out <= "1001111"; -- E
            when others => LED_out <= "1000111"; -- F
        end case;
     else
        LED_out <= "0000000"; -- "0";   
     end if;
end process;

end Behavioral;
