function Y = prodA_Temp(T,k,N)

    N = size(T,1);
    
    coef = 2 + (k/power(N,2));
    
    Y(1,1) = coef*T(1,1) - T(2,1);
    
    Y(N,1) = -T(N-1,1) + coef*T(N,1);
    
    for i = 2 : N-1
        
        Y(i,1) = -T(i-1,1) + coef*T(i,1) - T(i+1,1);
        
    end
end