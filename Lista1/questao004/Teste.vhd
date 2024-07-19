	-- Declaração da entidade
	entity Teste is
		 Port (
			  A : in bit;
			  B : in bit;
			  C : in bit;
			  Y : out bit
		 );
	end Teste;

<<<<<<< HEAD
	-- Declaração da arquitetura
	architecture Gate of Teste is
	begin
		 -- Descrição da lógica complexa
		 Y <= (A and B and C) or (A and B and not C) or (A and not B and C) or (not A and B and C);
	end Gate;
=======
-- Declaração da arquitetura
architecture Gate of Teste is
begin
    -- Descrição da lógica complexa
    Y <= (A and B and C) or (A and B and not C) or (A and not B and C) or (not A and B and C);
end Gate;
>>>>>>> 8d74631923a86954a8b49d1f40339c548783a10f
