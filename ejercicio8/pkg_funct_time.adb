package body Pkg_Funct_Time is
   function Time_To_String return String is
      use Ada.Calendar;
      Reloj:Ada.Calendar.Time:=Clock;
      Ano:Year_Number:=Year_Number'First;
      Mes:Month_Number:=Month_Number'First;
      Dia:Day_Number:=Day_Number'First;
      Segundos:Day_Duration:=Day_Duration'First;
      Hora:Integer:=0;
      Minutos:Integer:=0;
      Segundo:Integer:=0;
   begin
      Reloj:=Clock;
      Split(Reloj,Ano,Mes,Dia,Segundos);
      Hora:=abs(Integer (Segundos )/3600);
      Minutos:=((Integer(Segundos )-(Hora *3600))/60);
      Segundo:=Integer(Segundos)- Hora*3600-Minutos*60;
      return ("["& Dia'Img & "/" & Mes'Img & "/" & Ano'Img & " -" & Hora'Img & ":" & Minutos'Img & ":" & Segundo'Img & "]" );
   end Time_To_String;
   end Pkg_Funct_Time;
