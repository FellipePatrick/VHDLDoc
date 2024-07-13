
-- Declaração da entidade
entity Teste is
    Port (
        A : in bit;
        B : in bit;
        Y : out bit
    );
end Teste;

-- Declaração da arquitetura
architecture Behavioral of Teste is
begin
    -- Descrição da lógica AND
    Y <= A xor B;
end Behavioral;