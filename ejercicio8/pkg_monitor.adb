with Ada.Text_IO; use Ada.Text_IO;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;

package body Pkg_Monitor is
  procedure   Get_Msg(Monitor   :   in   out   Monitor_T;   Msg_In   :   in   String;Msg_Out : out Unbounded_String) is
    begin
    Monitor.Bloquear;
    select
      delay 10.0;
      Msg_Out:=To_Unbounded_String("ERROR");
    then abort
      Monitor.Imprimir_Aux(Msg_In);
      Msg_Out:=To_Unbounded_String(Get_Line);
    end select;
    

  end Get_Msg;
  protected body Monitor_T is
    entry imprimir_Msg(Msg : in  String) when Estado=LIBRE is
    begin
      Put_Line(Msg);
    end Imprimir_Msg;
    
    procedure Imprimir_Aux(Msg : in  String) is
    begin
      Put_Line(Msg);
    end Imprimir_Aux;
    
    entry Bloquear when Estado=LIBRE is 
    begin 
	Estado:=OCUPADO;
    end Bloquear;
    
    procedure Liberar is
    begin
	Estado:=LIBRE;
    end Liberar;
   
  end Monitor_T;
end Pkg_Monitor;
