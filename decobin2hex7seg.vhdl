--Edgar Humberto Perez Martinez
--Ing Electronica
--Descripcion de un decodificador bcd binario a hexadecimal de 7 segmentos 
use work.ldl_bib.all;

entity decobin2hex7seg is
   port( 

	ent: in bit_vector(3 downto 0);
	sal: out bit_vector(6 downto 0)
       );
end entity decobin2hex7seg;

architecture beh of decobin2hex7seg is
begin

  with ent select sal <= "1111110" when "0000" ,
			                "1111101" when "0001" ,
			                "1111011" when "0010" ,
								 "1110111" when "0011" ,
								 "1101111" when "0100" ,
								 "1011111" when "0101" ,
								 "1111111" when others 
									;
                             



end architecture beh;
				
