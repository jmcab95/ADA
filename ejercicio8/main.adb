with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Pkg_Monitor; use Pkg_Monitor;
with Pkg_Sem; use Pkg_Sem;
with Pkg_Tarea; use Pkg_Tarea;
with Ada.Task_Identification; use Ada.Task_Identification;


procedure Main is 

  Monitor : P_Monitor := new Monitor_T;
  Sem     : P_Sem     := new Sem_T; 
  Tarea1  : Tarea_Periodica_T(Monitor, Sem, 2000);
  Tarea2  : Tarea_Periodica_T(Monitor, Sem, 5000);
  Tarea_E : Tarea_Eventos_T(Monitor, Sem);
  Tarea_C : Tarea_Codigo_T(Monitor);
begin
  Monitor.all.Imprimir_Msg("­­­---Inicio del programa main---­­­­­");
  delay 1.0;
  while (Is_Callable(Tarea_C'Identity)) loop
    delay 0.0;
  end loop;
  Abort_Task(Tarea_E'Identity);
  Abort_Task(Tarea1'Identity);
  Abort_Task(Tarea2'Identity);
  delay 1.0;
  Monitor.all.Imprimir_Msg("---Fin del programa main---­­­­");
end Main;
