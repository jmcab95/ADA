with Ada.Real_Time;use Ada.Real_Time;
with Ada.Task_Identification;use Ada.Task_Identification;
with Ada.Text_IO;use Ada.Text_IO;

package body Pkg_Tarea is
   task body Tarea_Periodica_T is
      TiempoActivacion: constant Time_Span:=Seconds(1);
      Periodo:constant Time_Span:=Milliseconds(2000);
      TiempoComputacion: constant Time_Span:=Milliseconds(1000);
      Inicio:Time;
      Next_Time:Time;
      Variable_Entera:Integer;
      
   begin 
      delay To_Duration(TiempoActivacion);
      Inicio:=Clock;
      Next_Time:=CLock;
      Variable_Entera:=0;
      loop
	 delay until Next_Time;
	 while Clock-Inicio<TiempoComputacion loop
	    Variable_Entera:=Variable_Entera+1;
	 end loop;
	 Put_Line("Tarea("&Image(Current_Task)&"): Variable intera: " & Integer'Image(Variable_Entera));
	 Next_Time:=Next_Time+Periodo;
      end loop;
   end Tarea_Periodica_T;
end Pkg_Tarea;
