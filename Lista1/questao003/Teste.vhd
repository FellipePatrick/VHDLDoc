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
    Y <= (A and B) or (B xnor C);
end Gate;