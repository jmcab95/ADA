package Pkg_Sem is
   type Sem_T;
   type P_Sem is Access Sem_T;
   protected type Sem_T(Valor_Inicial :Integer:=0) is
      entry Wait;
      procedure Signal;
   private 
      Valor_Sem:Integer:=Valor_Inicial;
   end Sem_T;
   end Pkg_Sem;
   
