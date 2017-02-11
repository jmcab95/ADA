with Ada.Text_IO;use Ada.Text_IO;
with Pkg_Monitor; use Pkg_Monitor;
with Pkg_Sem;use Pkg_Sem;
with Pkg_Funct_Time;use Pkg_Funct_Time;
with Ada.Task_Identification;use Ada.Task_Identification;
with Ada.Real_Time;use Ada.Real_Time;
with Ada.Strings.Unbounded;use Ada.Strings.Unbounded;
with Ada.Calendar;
package Pkg_Tarea is
   type P_Integer is access Integer;
   
   task type Tarea_Periodica_T(Monitor:P_Monitor ;Sem:P_Sem; Per:Integer);
   
   task type Tarea_Eventos_T(Monitor:P_Monitor;Sem:P_Sem );
   task type Tarea_Codigo_T(Monitor: P_Monitor );
end Pkg_Tarea;


