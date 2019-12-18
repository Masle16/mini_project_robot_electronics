----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10.12.2019 13:58:17
-- Design Name: 
-- Module Name: counter_13bit - Behavioral
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

entity counter_N_bit is
    generic ( N : integer );
    Port ( en : in STD_LOGIC;
           rst : in STD_LOGIC;
           clk : in STD_LOGIC;
           count : out STD_LOGIC_VECTOR (N-1 downto 0));
end counter_N_bit;

architecture Behavioral of counter_N_bit is
signal count_sig: unsigned(N-1 downto 0) := (others => '0');
begin

process (clk,rst)
    begin
    if ( rst='1' ) then
        count_sig <= (others => '0');
    elsif(rising_edge(clk)) then
        if (en='1') then
            count_sig <= count_sig + 1;
        end if;
    end if;
end process;
count <= std_logic_vector(count_sig);
end Behavioral;
