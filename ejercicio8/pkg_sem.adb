with Ada.Real_Time; use Ada.Real_Time;
with Ada.Text_IO; use Ada.Text_IO;
with Ada.Float_Text_IO; use Ada.Float_Text_IO;
with Ada.Task_Identification; use Ada.Task_Identification;

package body Pkg_Sem is
  protected body Sem_T is
    entry Wait(Tarea: out Task_Id) when State=True is
    begin
      State:=False;
      Tarea:=Tarea_Id;
    end Wait;
    
    procedure Signal(Tarea: in Task_Id) is 
    begin
      State:=True;
      Tarea_Id:=Tarea;
    end Signal;
    
  end Sem_T;
end Pkg_Sem;
