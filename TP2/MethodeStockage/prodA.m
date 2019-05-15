function Y = prodA(X) %fait l'opération A * X
    
    %A = { 3 -1 0 }
    %    { -1 3 -1 }
    %    [ 0 -1 3 }
 
    N = size(X, 1);
    if(N > 1)
        Y(1, 1) = 3*X(1, 1) - X(2, 1);
    else 
        Y(1, 1) = 3*X(1, 1);
    end
    if(N == 2)
        Y(2, 1) = - X(1, 1) + 3 * X(2, 1);
    end
    
    if(N > 2)
        for i = 2:(N-1)
            Y(i, 1) = - X(i-1, 1) + 3 * X(i, 1) - X(i+1, 1);
        end
        Y(N, 1) = - X(N-1, 1) + 3 * X(N, 1);
    end
    
end