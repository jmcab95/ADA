with Ada.Text_IO; use Ada.Text_IO;
with Pkg_Monitor; use Pkg_Monitor;
with Pkg_Sem; use Pkg_Sem;
with Pkg_Funct_Time; use Pkg_Funct_Time;
with Ada.Task_Identification; use Ada.Task_Identification;
with Ada.Real_Time; use Ada.Real_Time; 
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Calendar;

package body Pkg_Tarea is 

task body Tarea_Codigo_T is
  Msg_Aux : Unbounded_String;
begin
    delay 5.0;
    loop
	  Msg_Aux := To_Unbounded_String("");
	  Monitor.all.Imprimir_Msg("");
	  Get_Msg(Monitor.all, "Introduce el código:", Msg_Aux);
	  if Msg_Aux = "ERROR" then
	      Monitor.all.Imprimir_Aux("ERROR ­> LA ISLA VA A ESTALLAR!!!");
	      Monitor.all.Imprimir_Aux("");
	      Monitor.all.Liberar;
	      Abort_Task(Current_Task);
	      exit;
	  elsif Msg_Aux = "1234" then
	      Monitor.all.Imprimir_Aux("CORRECTO!");
	      Monitor.all.Imprimir_Aux("");
	  else
	      Monitor.all.Imprimir_Aux("CODIGO ERRONEO ­> LA ISLA VA A ESTALLAR!!!");
	      Monitor.all.Imprimir_Aux("");
	      Monitor.all.Liberar;
	      Abort_Task(Current_Task);
	      exit;
	  end if;
	  Monitor.all.Liberar;
	  delay 10.0;
    end loop;
end Tarea_Codigo_T;

task body Tarea_Periodica_T is
  Periodo:constant Time_Span:=Milliseconds(per);
  TiempoActivacion:constant Time_Span:=Milliseconds(per/2);
  Plazo:constant Time_Span:=tiempoActivacion;
  Next_Time:Time;
begin
  delay To_Duration(TiempoActivacion);
  Next_Time:=Clock;
  
  loop
    delay until Next_time;
    select 
     Monitor.all.Imprimir_Msg("Soy la tarea "& Image(Current_Task) & " y son las "& Time_To_String);
    or
     delay To_Duration(Plazo);
     sem.all.signal(Current_Task);
     Next_time:=Next_Time + Periodo;
    end select;
    Next_Time:=Next_Time + Periodo;
  end loop;
end Tarea_Periodica_T;

task body Tarea_Eventos_T is
Tarea : Task_Id := Null_Task_Id;
begin 
  loop
    if Is_Callable(Current_Task)=true then
     select
      Sem.all.Wait(Tarea);
      Monitor.all.Imprimir_Msg("La tarea " & Image(tarea) & " ha incumplido el plazo");
     then abort
      loop
       null;
       delay 0.0;
      end loop;
     end select;
    else 
     exit;
    end if;
  end loop;
end Tarea_Eventos_T;
end Pkg_Tarea;
  
