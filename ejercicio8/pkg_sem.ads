with Ada.Real_Time;use Ada.Real_Time;
with Ada.Text_IO;use Ada.Text_IO;
with Ada.Float_Text_IO; use Ada.Float_Text_IO;
with Ada.Task_Identification; use Ada.Task_Identification;

package Pkg_Sem is
   
   protected type Sem_T(Valor_Inicial: Integer:=0) is
      entry Wait(Tarea: out Task_Id );
      procedure Signal(Tarea:in Task_Id );
      
   private 
      State :Boolean :=False;
      Tarea_Id:Task_Id:=Null_Task_Id;
   end Sem_T;
   type P_Sem is access Sem_T;
   end Pkg_Sem;
