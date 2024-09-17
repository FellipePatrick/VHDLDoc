library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity Decodificador is
    Port ( 
        digito : in  integer range 0 to 9;
        segmentos : out std_logic_vector(6 downto 0)
    );
end Decodificador;

architecture comportamento of Decodificador is
begin
    process(digito)
    begin
        case digito is
            when 0 => segmentos <= "0000001"; 
            when 1 => segmentos <= "1001111"; 
            when 2 => segmentos <= "0010010"; 
            when 3 => segmentos <= "0000110"; 
            when 4 => segmentos <= "1001100"; 
            when 5 => segmentos <= "0100100";
            when 6 => segmentos <= "0100000";
            when 7 => segmentos <= "0001111"; 
            when 8 => segmentos <= "0000000";
            when 9 => segmentos <= "0000100"; 
            when others => segmentos <= "1111111"; 
        end case;
    end process;
end comportamento;
