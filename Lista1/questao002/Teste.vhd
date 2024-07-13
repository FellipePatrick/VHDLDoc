
-- Declaração da entidade
entity Teste is
    Port (
        A : in bit;
        B : in bit;
		  C : in bit;
        Y : out bit
    );
end Teste;

-- Declaração da arquitetura
architecture Gate of Teste is
begin
    -- Descrição da lógica AND
    Y <= (not A and not B and C) or (not A and B and C) or (A and not B and not C);
end Gate;