library ieee;
use ieee.std_logic_1164.all;

entity Timer_tb is
end Timer_tb;

architecture sim of Timer_tb is
    signal clk     : std_logic := '0';
    signal nRst    : std_logic := '1';
    signal segmentos_seg_u  : std_logic_vector(6 downto 0);
    signal segmentos_seg_d  : std_logic_vector(6 downto 0);
    signal segmentos_min_u  : std_logic_vector(6 downto 0);
    signal segmentos_min_d  : std_logic_vector(6 downto 0);
    signal segmentos_hora_u : std_logic_vector(6 downto 0);
    signal segmentos_hora_d : std_logic_vector(6 downto 0);

    constant clockFreq : integer := 50e6; -- 50 MHz
begin
    -- Instanciando o Timer
    uut: entity work.Timer
        generic map (clockFreq => clockFreq)
        port map (
            clk => clk,
            nRst => nRst,
            segmentos_seg_u => segmentos_seg_u,
            segmentos_seg_d => segmentos_seg_d,
            segmentos_min_u => segmentos_min_u,
            segmentos_min_d => segmentos_min_d,
            segmentos_hora_u => segmentos_hora_u,
            segmentos_hora_d => segmentos_hora_d
        );

    -- Gerador de clock (50 MHz)
    clk <= not clk after 10 ns; -- Inverte o clock a cada 10 ns para gerar 50 MHz

    -- Processo de reset
    process
    begin
        -- Reset ativo
        nRst <= '0';
        wait for 20 ns;  -- Espera 20 ns
        -- Reset desativado
        nRst <= '1';
        wait; -- Espera indefinidamente
    end process;
end sim;
