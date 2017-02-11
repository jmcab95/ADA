with Ada.Text_IO; use Ada.Text_IO;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
package body Pkg_Monitor is
   
   procedure Imprimir_Msg(Monitor: in out Monitor_T ; Msg: in String) is
   begin
      
      Monitor.Imprimir_Msg(Msg);
      delay 2.0;
      Monitor.Liberar;
      
   end Imprimir_Msg;
   
   procedure Get_Msg(Monitor: in out Monitor_T; Msg: out Unbounded_String) is
   begin
      Monitor.Bloquear;
      select
	 delay 10.0;
	 Monitor.Imprimir_Aux(" ERROR. Usuario despistado ");
	 Msg:=To_Unbounded_String("-1");
      then abort
	 Monitor.Imprimir_Aux(" Esperando a que se escriba algo: ");
	 Msg:=To_Unbounded_String(Get_Line);
      end select;
      Monitor.Liberar;
   end Get_Msg;
   
   protected body Monitor_T is
      
      entry Imprimir_Msg(Msg : in String) when Estado=LIBRE is
      begin
	 Estado:=OCUPADO;
	 Put(Msg);
      end Imprimir_Msg;
      
      entry Bloquear when Estado=LIBRE is 
      begin
	 Estado:=OCUPADO;
      end Bloquear;
      
      procedure Liberar is
      begin
	 Estado:=LIBRE;
      end Liberar;
      procedure Imprimir_Aux(Msg:in String ) is 
      begin 
	 Put(Msg);
      end Imprimir_Aux;
   end Monitor_T;
end Pkg_Monitor;

