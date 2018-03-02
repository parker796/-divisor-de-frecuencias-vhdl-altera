--Edgar Humberto Perez Martinez
--Ing Electronica
--Descripcion de un decodificador bcd binario a hexadecimal de 7 segmentos 
use work.ldl_bib.all;

entity decores1 is
   port( 

	ent: in bit_vector(3 downto 0);
	sal: out bit_vector(6 downto 0)
       );
end entity decores1;

architecture beh of decores1 is
begin

  with ent select sal <= "1111110" when "0000" ,
					   	 "1111101" when "0001" ,
						 "1111011" when "0010" ,
						 "1110111" when "0011" ,
						 "1101111" when "0100" ,
						 "1011111" when others 
							;
                            

end architecture beh;
				
