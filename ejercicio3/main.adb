with Pkg_Tarea;use Pkg_Tarea;
with Ada.Text_IO; use Ada.Text_IO;

procedure Main is
   TareaUno:Tarea_Periodica_T;
   TareaDos:Tarea_Periodica_T;
     begin 
   	delay 8.0;
   	abort TareaUno;
   	abort TareaDos;
   	delay 2.0;
   	New_Line;
   	Put("Fin del programa");
end Main;
