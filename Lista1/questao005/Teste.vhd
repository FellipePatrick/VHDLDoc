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
    -- Descrição da lógica complexa
    Y <= (not A and B and not C) or (not A and B and C) or (A and not B and C) or (A and B and C);
end Gate;