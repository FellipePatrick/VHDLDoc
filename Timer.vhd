library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity Timer is
    generic(clockFreq   :   integer := 1);
    port (
        clk     :   in      std_logic;
        nRst    :   in      std_logic;
        segmentos_seg_u  :   out std_logic_vector(0 to 6);
        segmentos_seg_d  :   out std_logic_vector(0 to 6);
        segmentos_min_u  :   out std_logic_vector(0 to 6);
        segmentos_min_d  :   out std_logic_vector(0 to 6);
        segmentos_hora_u :   out std_logic_vector(0 to 6);
        segmentos_hora_d :   out std_logic_vector(0 to 6)
    );
end Timer;

architecture Comportamento of Timer is

    signal s, m, h : integer range 0 to 59;
    signal ticks   : integer range 0 to clockFreq;

    signal digito_seg_u : integer range 0 to 9;
    signal digito_seg_d : integer range 0 to 5;
    signal digito_min_u : integer range 0 to 9;
    signal digito_min_d : integer range 0 to 5;
    signal digito_hora_u : integer range 0 to 9;
    signal digito_hora_d : integer range 0 to 2;

begin

    process(clk, nRst)
    begin
        if nRst = '0' then
            ticks <= 0;
            s <= 0;
            m <= 0;
            h <= 0;
        elsif clk'event and clk = '1' then
            if ticks = clockFreq - 1 then
                ticks <= 0;
                if s = 59 then
                    s <= 0;
                    if m = 59 then
                        m <= 0;
                        if h = 23 then
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

    digito_seg_u <= s mod 10;
    digito_seg_d <= s / 10;
    digito_min_u <= m mod 10;
    digito_min_d <= m / 10;
    digito_hora_u <= h mod 10;
    digito_hora_d <= h / 10;

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
