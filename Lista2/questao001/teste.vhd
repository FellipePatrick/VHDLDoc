entity teste is
    Port (
        A,B,C,D : in bit;
        M1, M2, M3, M4 : out bit
    );
end teste;

architecture comportamento of teste is
begin
    M1 <= A;
	 M2 <= B;
	 M3 <= ((not A) and C) or ((not B) and C);
	 M4 <= ((not A) and (not C) and D) or ((not A) and (not B) and D) or ((not B) and (not C) and D);
end comportamento;