with Pkg_Procedure;
with Pkg_Tarea;

use Pkg_Procedure;
use Pkg_Tarea;
procedure Main is
   Tarea:Tarea_T;
   Num:Natural:=0;
begin
   loop
   Tarea.EstadoConsultas;
   Leer_Entero(Num);
   if Num/=0 then
     Tarea.EsPar(Num);
   else 
      exit;
   end if;
   end loop;
   abort Tarea;
end Main;











