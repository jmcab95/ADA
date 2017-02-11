package Pkg_Sem is
   type Sem_T is limited private;
   procedure Signal(Sem:in out Sem_T);
   procedure Wait(Sem: in out Sem_T);
private 
   protected type Sem_T(Valor_Inicial:Integer:=0) is
      entry Wait;
      procedure Signal;
   private
      Valor_Sem:Integer:=Valor_Inicial;
   end Sem_T;
end Pkg_Sem;

   
