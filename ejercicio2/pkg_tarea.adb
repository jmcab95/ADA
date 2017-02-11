with Ada.Text_IO;
use Ada.Text_IO;


package body Pkg_Tarea is 
   task body Tarea_T is
      Numero:Integer;
      Pares:Natural:=0;
      Impares:Natural:=0;
      
   begin
      loop
	 select
	    accept EsPar(N:Integer) do
	       Numero:=N;
	       if Numero mod 2=0 then
		  Pares:=Pares+1;
		  New_Line;
		  Put("El numero " & Integer'Image (Numero) &" es par" );
		  
	       else 
		  Impares:=Impares+1;
		  New_Line;
		  Put("El numero " & Integer'Image (Numero) & " es impar");
	       end if;
	    end EsPar;
	 or 
	    accept EstadoConsultas do 
	       New_Line;
	       Put("Cantidad pares contados:  " & Integer'Image(Pares));
	       New_Line;
	       Put("Cantidad impares contados: " & Integer'Image(Impares));
	    end EstadoConsultas;
	 end select;
      end loop;
   end Tarea_T;
end Pkg_Tarea;

		 
