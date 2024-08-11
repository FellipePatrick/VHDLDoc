library verilog;
use verilog.vl_types.all;
entity teste_vlg_sample_tst is
    port(
        two             : in     vl_logic_vector(4 downto 0);
        sampler_tx      : out    vl_logic
    );
end teste_vlg_sample_tst;
