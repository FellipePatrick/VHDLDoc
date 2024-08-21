library verilog;
use verilog.vl_types.all;
entity Timer is
    port(
        clk             : in     vl_logic;
        nRst            : in     vl_logic;
        segmentos_seg_u : out    vl_logic_vector(6 downto 0);
        segmentos_seg_d : out    vl_logic_vector(6 downto 0);
        segmentos_min_u : out    vl_logic_vector(6 downto 0);
        segmentos_min_d : out    vl_logic_vector(6 downto 0);
        segmentos_hora_u: out    vl_logic_vector(6 downto 0);
        segmentos_hora_d: out    vl_logic_vector(6 downto 0)
    );
end Timer;
