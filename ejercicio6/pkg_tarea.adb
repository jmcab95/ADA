with Pkg_Sem;use Pkg_Sem;
with Pkg_Funct_Time;use Pkg_Funct_Time;
with Ada.Calendar; use Ada.Calendar;
with Ada.Text_IO;use Ada.Text_IO;
with Ada.Task_Identification;use Ada.Task_Identification;

package body Pkg_Tarea is
   task body Tarea_Suceso_T is
      Contador:Integer:=0;
      Intervalo:Duration:=0.1;
      
   begin
      loop
	 select
	    Sem.all.Wait;
	    Put("Evento generado a las " & Time_To_String);
	    Put(" Variable interna " & Integer'Image(Contador));
	    New_Line;
	    Contador:=0;
	 then abort
	    loop
	       Contador:=Contador+1;
	       delay Intervalo;
	    end loop;
	 end select;
	 
	 if Is_Callable(Current_Task) then
	    null;
	 else
	    exit;
	 end if;
      end loop;
   end Tarea_Suceso_T;
end Pkg_Tarea;
