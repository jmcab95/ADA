with Ada.Real_Time; use Ada.Real_Time;
with Ada.Text_IO; use Ada.Text_IO;

package body Pkg_Tareas is
   procedure A is
      TiempoEjecucion:constant Time_Span:=Milliseconds(10);
      TiempoInicial:Time:=Clock;
      
   begin 
      TiempoInicial:=Clock;
      loop
	 exit when(Clock-TiempoInicial)> TiempoEjecucion;
      end loop;
	 New_Line;
	 Put("Fin tarea A ");
   end A;
   
   procedure B is
      
      TiempoEjecucion:constant Time_Span:=Milliseconds(8);
      TiempoInicial:Time:=Clock;
      
   begin 
      TiempoInicial:=Clock;
      loop
	 exit when(Clock-TiempoInicial)> TiempoEjecucion;
      end loop;
	 New_Line;
	 Put("Fin tarea B ");
   end B;
   
    procedure C is
      TiempoEjecucion:constant Time_Span:=Milliseconds(5);
      TiempoInicial:Time:=Clock;
      
   begin 
      TiempoInicial:=Clock;
      loop
	 exit when(Clock-TiempoInicial)> TiempoEjecucion;
      end loop;
	 New_Line;
	 Put("Fin tarea C ");
   end C;
   
    procedure D is
      TiempoEjecucion:constant Time_Span:=Milliseconds(4);
      TiempoInicial:Time:=Clock;
      
   begin 
      TiempoInicial:=Clock;
      loop
	 exit when(Clock-TiempoInicial)> TiempoEjecucion;
      end loop;
	 New_Line;
	 Put("Fin tarea D ");
   end D;
   
   procedure E is
      TiempoEjecucion:constant Time_Span:=Milliseconds(2);
      TiempoInicial:Time:=Clock;
      
   begin 
      TiempoInicial:=Clock;
      loop
	 exit when(Clock-TiempoInicial)>TiempoEjecucion;
      end loop;
      New_Line;
      Put("Fin tarea E ");
   end E;
end Pkg_Tareas;
