entity teste is
    Port (
        A, B, C : in bit;
        y  : out bit-- Alterado para "bit_vector" com "v" minúsculo
    );
end teste;

architecture comportamento of teste is
begin
	 y <= (A xor B) xor C;

end comportamento;
