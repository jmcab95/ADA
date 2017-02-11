package body Pkg_Sem is
   
   procedure Signal(Sem:in out Sem_T) is
      
   begin 
      Sem.Signal;
   end Signal;
   
   procedure Wait(Sem:in out Sem_T) is
      
   begin 
      
      Sem.Wait;
      
   end Wait;
   
   
   protected body Sem_T is
      entry Wait when Valor_Sem=1 is
	 
      begin 
	 Valor_Sem:=0;
      end Wait;
      
      procedure Signal is 
      begin
	 Valor_Sem:=1;
	 
      end Signal;
      
   end Sem_T;
   end Pkg_Sem;
