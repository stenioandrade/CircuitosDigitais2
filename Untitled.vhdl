entity mux_9 is
	port (i0, i1, i2, i3 : in bit;
		  s0, s1         : in bit;
		  ot             : out bit);
end mux_9;

Architecture teste of mux_9 is
	signal sel : bit_vector (1 downto 0);
begin
	sel <= s1 & s0;
	with sel select
		ot <= i0 when "00",
			  i1 when "01",
			  i2 when "10",
			  i3 when "11",
			  unaffected when others;
end teste; 

----------

entity prioridade is
	port (p : in  bit_vector(3 downto 1);
		  c : out bit_vector(1 downto 0);
end prioridade;

Architecture teste1 of prioridade is
begin                               -- p3 p2 p1 c1 c0
	ot <= "11" when p(3)='1' else   --  1  -  -  1  1
		  "10" when p(2)='1' else   --  0  1  -  1  0
	      "01" when p(1)='1' else   --  0  0  1  0  1
	      "00";                     --  0  0  0  0  0
end teste1;   

Architecture teste1 of prioridade is
begin                                                -- p3 p2 p1 c1 c0
	ot <= "11" when "111" | "110" | "101" | "100",   --  1  -  -  1  1
		  "10" when "011" | "010",                   --  0  1  -  1  0
	      "01" when "001",                           --  0  0  1  0  1
	      "00" when "000";                           --  0  0  0  0  0
end teste1;

----------

entity mux is
	port (i0, i1, i2, i3 : in bit;
		  sel            : in integer range 3 downto 0;
		  ot             : out bit);
end mux;

Architecture cblock of mux is
	signal global : bit_vector (o to 1);
begin
	abc : block
		ot <= i0 when "00",
			  i1 when "01",
			  i2 when "10",
			  i3 when "11",
			  unaffected when others; 
	end block abd;
	
	def : cblock
		signal interno : bit_vector(0 to 1);
	begin
   		with sel select
		   interno <= "00" when 0,
			          "01" when 1,
			          "10" when 2,
			          "11" when others;
		global <= interno;
	end block def;	
	
end cblock;       

----------

entity lista is
	port (c, d : out string(1 to 9)); 
end lista;
	
ARCHITECTURE teste OF lista IS 
	signal x : string(1 to 3) := "Alo";
	signal y : string(1 to 5) := "mundo";

BEGIN    
	c <= x & " " & y;
	d <= x(1 to 2) & "o " & y;

END teste;

--------

case esp is
	when cond1         => coma;
	when cond2         => comb; comc;
	when cond3 | cond4 => comd;
	when cond5         => come; comf;
end case;    

case na is
	when 3       => s0 <= i0 or i1;  s1 <= i3;
	when 7 to 12 => s0 <= i1;        s1 <= i4;
	when others  => s0 <= i0 and i1; s1 <= i5;
end case; 

wait on sig_a, sig_b;
wait until sig_c = '1';
wait for 100 ns;
wait until sig_d = '0' for 50 ns;      















