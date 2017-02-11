with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Text_IO; use Ada.Text_IO;
package Pkg_Monitor is
   type Monitor_T is limited private;
   procedure Imprimir_Msg(Monitor: in out Monitor_T;Msg:in String);
   procedure Get_Msg(Monitor:in out Monitor_T;Msg:out Unbounded_String );
private
   type Status is (LIBRE,OCUPADO);
   protected type Monitor_T is 
      entry Imprimir_Msg(Msg: in String);
      procedure Imprimir_Aux(Msg: in String);
      entry Bloquear;
      procedure Liberar;
      
   private 
      Estado:Status:=LIBRE;
   end Monitor_T;
end Pkg_Monitor;
