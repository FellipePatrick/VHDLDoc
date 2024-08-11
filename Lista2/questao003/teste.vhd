entity teste is
    Port (
        gray :    in BIT_VECTOR(3 downto 0);
        johnson: out BIT_VECTOR(3 downto 0)
    );
end teste;

architecture comportamento of teste is
begin
  with gray  select
		johnson<= "0000" when "0000",  -- Gray 0000 -> Johnson 0000
					  "0001" when "0001",  -- Gray 0001 -> Johnson 0001
					  "0011" when "0011",  -- Gray 0011 -> Johnson 0011
					  "0010" when "0010",  -- Gray 0010 -> Johnson 0010
					  "0110" when "0110",  -- Gray 0110 -> Johnson 0110
					  "0111" when "0111",  -- Gray 0111 -> Johnson 0111
					  "0101" when "0101",  -- Gray 0101 -> Johnson 0101
					  "0100" when "0100",  -- Gray 0100 -> Johnson 0100
					  "1100" when "1100",  -- Gray 1100 -> Johnson 1100
					  "1101" when "1101",  -- Gray 1101 -> Johnson 1101
					  "1111" when "1111",  -- Gray 1111 -> Johnson 1111
					  "1110" when "1110",  -- Gray 1110 -> Johnson 1110
					  "1010" when "1010",  -- Gray 1010 -> Johnson 1010
					  "1011" when "1011",  -- Gray 1011 -> Johnson 1011
					  "1001" when "1001",  -- Gray 1001 -> Johnson 1001
					  "1000" when others;  -- Gray 1000 -> Johnson 1000 (padrão)
end comportamento;
