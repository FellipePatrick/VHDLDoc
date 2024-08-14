ENTITY teste IS
    PORT (
        A, B, Te : IN BIT; 
        ports    : IN BIT_Vector(0 to 2); 
        Ts, S    : OUT BIT
    );
END teste;

ARCHITECTURE comportamento OF teste IS
BEGIN 
    PROCESS(ports, Te, A, B)
    BEGIN
        IF ports = "001" THEN
            S  <= (Te XOR A) XOR B;
            Ts <= (Te AND A) OR (Te AND B) OR (A AND B);
        ELSIF ports = "011" THEN
            S  <= (Te XOR A) XOR (NOT B);
        ELSIF ports = "101" THEN
            S  <= A OR B;
        ELSIF ports = "110" THEN
            S  <= A AND B;
        ELSIF ports = "100" THEN
            S  <= A XOR B;
        ELSIF ports = "000" THEN
            S  <= '0'; 
        END IF;
    END PROCESS;
END comportamento;