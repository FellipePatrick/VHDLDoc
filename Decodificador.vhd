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
            when 0 => segmentos <= "1111110"; 
            when 1 => segmentos <= "0110000"; 
            when 2 => segmentos <= "1101101"; 
            when 3 => segmentos <= "1111001"; 
            when 4 => segmentos <= "0110011"; 
            when 5 => segmentos <= "1011011";
            when 6 => segmentos <= "1011111";
            when 7 => segmentos <= "1110000"; 
            when 8 => segmentos <= "1111111";
            when 9 => segmentos <= "1111011"; 
            when others => segmentos <= "0000000"; 
        end case;
    end process;
end comportamento;
