library verilog;
use verilog.vl_types.all;
entity Timer_vlg_check_tst is
    port(
        segmentos_hora_d: in     vl_logic_vector(6 downto 0);
        segmentos_hora_u: in     vl_logic_vector(6 downto 0);
        segmentos_min_d : in     vl_logic_vector(6 downto 0);
        segmentos_min_u : in     vl_logic_vector(6 downto 0);
        segmentos_seg_d : in     vl_logic_vector(6 downto 0);
        segmentos_seg_u : in     vl_logic_vector(6 downto 0);
        sampler_rx      : in     vl_logic
    );
end Timer_vlg_check_tst;
