with Ada.Text_IO; use Ada.Text_IO;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;

package Pkg_Monitor is
  type Status is (LIBRE, OCUPADO);
  protected type Monitor_T is
    entry     Imprimir_Msg(Msg : in  String);
    procedure Imprimir_Aux(Msg : in  String);
    entry     Bloquear;
    procedure Liberar;
  private
    Estado     : Status := LIBRE;
  end Monitor_T;
  procedure   Get_Msg(Monitor   :   in   out   Monitor_T;   Msg_In   :   in   String;Msg_Out : out Unbounded_String);
  type P_Monitor is access Monitor_T;
end Pkg_Monitor;
