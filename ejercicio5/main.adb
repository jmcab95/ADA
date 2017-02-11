with Pkg_Tareas; use Pkg_Tareas;
with Ada.Real_Time; use Ada.Real_Time;
with Ada.Text_IO; use Ada.Text_IO;

procedure Main is
   type Cycle is mod 4;
   Marco:Cycle:=0;
   Next_Ciclo:Time:=Clock;
   SegundoCiclo:constant Time_Span:=Milliseconds(25);
   
begin
Next_Ciclo:=Clock;
    for Bucle in 1 .. 20 loop
       case Marco is
	  when 0=>A;B;C;
	  when 1=>A;B;D;E;
	  when 2=>A;B;C;
	  when 3=>A;B;D;
	  when others => null;
       end case;
       Put("Fin del marco "& Cycle'Image(Marco));
       Marco:=Marco+1;
       Next_Ciclo:=Next_Ciclo+SegundoCiclo;
       delay until Next_Ciclo;
    end loop;
    end Main;
