library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity Timer is
    generic(clockFreq   :   integer := 50e6);   -- Valor do clock de entrada, DE10 Lite = 50 MHz
    port (
        clk     :   in      std_logic;      -- Sinal de clock de entrada
        nRst    :   in      std_logic;      -- Sinal de reset, ativo em nível baixo
        segmentos_seg_u  :   out std_logic_vector(6 downto 0); -- Segmentos para segundos (unidade)
        segmentos_seg_d  :   out std_logic_vector(6 downto 0); -- Segmentos para segundos (dezena)
        segmentos_min_u  :   out std_logic_vector(6 downto 0); -- Segmentos para minutos (unidade)
        segmentos_min_d  :   out std_logic_vector(6 downto 0); -- Segmentos para minutos (dezena)
        segmentos_hora_u :   out std_logic_vector(6 downto 0); -- Segmentos para horas (unidade)
        segmentos_hora_d :   out std_logic_vector(6 downto 0)  -- Segmentos para horas (dezena)
    );
end Timer;

architecture Comportamento of Timer is

    signal s, m, h : integer range 0 to 59;   -- Contadores de segundos e minutos
    signal ticks   : integer range 0 to clockFreq;  -- Para contagem de ciclos de clock

    signal digito_seg_u : integer range 0 to 9; -- Unidade dos segundos
    signal digito_seg_d : integer range 0 to 5; -- Dezena dos segundos
    signal digito_min_u : integer range 0 to 9; -- Unidade dos minutos
    signal digito_min_d : integer range 0 to 5; -- Dezena dos minutos
    signal digito_hora_u : integer range 0 to 9; -- Unidade das horas
    signal digito_hora_d : integer range 0 to 2; -- Dezena das horas

begin

    -- Relógio que conta os segundos, minutos e horas
    process(clk, nRst)
    begin
        if nRst = '0' then
            -- Reset do timer
            ticks <= 0;
            s <= 0;
            m <= 0;
            h <= 0;
        elsif clk'event and clk = '1' then
            -- Contagem
            if ticks = clockFreq - 1 then   -- Conta 1 s
                ticks <= 0;
                if s = 59 then              -- Conta 1 min
                    s <= 0;
                    if m = 59 then          -- Conta 1 h
                        m <= 0;
                        if h = 23 then      -- Conta 1 dia
                            h <= 0;
                        else
                            h <= h + 1;
                        end if;
                    else
                        m <= m + 1;
                    end if;
                else
                    s <= s + 1;
                end if;
            else 
                ticks <= ticks + 1;
            end if;
        end if;
    end process;

    -- Divisão das unidades e dezenas
    digito_seg_u <= s mod 10;  -- Unidade dos segundos
    digito_seg_d <= s / 10;    -- Dezena dos segundos
    digito_min_u <= m mod 10;  -- Unidade dos minutos
    digito_min_d <= m / 10;    -- Dezena dos minutos
    digito_hora_u <= h mod 10; -- Unidade das horas
    digito_hora_d <= h / 10;   -- Dezena das horas

    -- Decodificador para cada segmento de display
    DecodificadorSegundosU: entity work.Decodificador
        port map (
            digito => digito_seg_u,
            segmentos => segmentos_seg_u
        );

    DecodificadorSegundosD: entity work.Decodificador
        port map (
            digito => digito_seg_d,
            segmentos => segmentos_seg_d
        );

    DecodificadorMinutosU: entity work.Decodificador
        port map (
            digito => digito_min_u,
            segmentos => segmentos_min_u
        );

    DecodificadorMinutosD: entity work.Decodificador
        port map (
            digito => digito_min_d,
            segmentos => segmentos_min_d
        );

    DecodificadorHorasU: entity work.Decodificador
        port map (
            digito => digito_hora_u,
            segmentos => segmentos_hora_u
        );

    DecodificadorHorasD: entity work.Decodificador
        port map (
            digito => digito_hora_d,
            segmentos => segmentos_hora_d
        );

end Comportamento;
