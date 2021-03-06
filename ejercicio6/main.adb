with Pkg_Sem;use Pkg_Sem;
with Pkg_Funct_Time;use Pkg_Funct_Time;
with Ada.Calendar;use Ada.Calendar;
with Ada.Text_IO;use Ada.Text_IO;
with Ada.Task_Identification;use Ada.Task_Identification;
with Pkg_Tarea;use Pkg_Tarea;
with Ada.Real_Time;use Ada.Real_Time;

procedure Main is
   
   Sem:P_Sem:=new Sem_T;
   Tarea:Tarea_P :=new Tarea_Suceso_T(Sem);
   Intervalo:Duration:=0.0;
   Incremento:Duration:=1.0;
begin
   for Iteracciones in 0 .. 10 loop
      delay Intervalo;
      Sem.all.Signal;
      Intervalo:=Intervalo+Incremento;
   end loop;
   abort Tarea.all;
end Main;

  
