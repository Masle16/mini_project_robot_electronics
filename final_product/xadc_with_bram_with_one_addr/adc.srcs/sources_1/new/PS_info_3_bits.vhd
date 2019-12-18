----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12/13/2019 03:19:20 PM
-- Design Name: 
-- Module Name: PS_info_3_bits - Behavioral
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

entity PS_info_3_bits is
    Port ( data : in STD_LOGIC_VECTOR (31 downto 0);
           pwm_inc : out STD_LOGIC_VECTOR (1 downto 0);
           battery_lvl : out STD_LOGIC);
end PS_info_3_bits;

architecture Behavioral of PS_info_3_bits is

begin
pwm_inc <= data(1 downto 0);
battery_lvl <= data(2);

end Behavioral;
