entity teste is
    Port (
        two :    in BIT_VECTOR(4 downto 0);
        bcd    : out BIT_VECTOR(3 downto 0)
    );
end teste;

architecture comportamento of teste is
begin
  with two select
		bcd <=  "0000" when "00011",  -- Código 0
					  "0001" when "00101",  -- Código 1
					  "0010" when "00110",  -- Código 2
					  "0011" when "01001",  -- Código 3
					  "0100" when "01010",  -- Código 4
					  "0101" when "01100",  -- Código 5
					  "0110" when "10001",  -- Código 6
					  "0111" when "10010",  -- Código 7
					  "1000" when "10100",  -- Código 8
					  "1001" when "11000",  -- Código 9
					  "1111" when OTHERS;
end comportamento;
