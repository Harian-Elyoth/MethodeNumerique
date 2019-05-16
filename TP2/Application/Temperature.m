function [X,iteration,err] = Temperature(T0,Tn,k,N)

    x0 = zeros(N,1);
    
    coef = k*T0/power(N,2);
   
    kmax = 1000;
    
    for i=1:N
        
        B(i,1) = coef;
        
    end
    
    B(1,1) = B(1,1) + T0;
    
    B(N,1) = B(N,1) + Tn;
    
    [X,iteration,err] = GradientsConjuguesTemp(x0,@prodA_Temp,B,1e-10,kmax,k,N);
end