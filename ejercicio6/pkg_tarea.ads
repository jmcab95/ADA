with Pkg_Sem; use Pkg_Sem;
with Pkg_Funct_Time; use Pkg_Funct_Time;
with Ada.Calendar; use Ada.Calendar;
with Ada.Text_IO; use Ada.Text_IO;
with Ada.Task_Identification; use Ada.Task_Identification;
package Pkg_Tarea is 
    task type Tarea_Suceso_T(Sem:Pkg_Sem.P_Sem);
    type Tarea_P is access Tarea_Suceso_T; 
end Pkg_tarea;
