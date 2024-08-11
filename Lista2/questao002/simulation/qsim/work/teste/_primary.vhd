library verilog;
use verilog.vl_types.all;
entity teste is
    port(
        two             : in     vl_logic_vector(4 downto 0);
        bcd             : out    vl_logic_vector(3 downto 0)
    );
end teste;
