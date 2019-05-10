function [X, err, k] = DescentePasOptimal(X0, prodA, B, tol, kmax)
    
    X = X0;
    err = prodA(X)-B;
    N2 = prod_scal(err, err);
    k = 0;
    
    while(sqrt(N2) > tol)
        
        p = N2/prod_scal(err, prodA(err));
        
        X = X-p*err;
        
        err = prodA(X) - B;
        
        N2 = prod_scal(err, err);
        
        k = k + 1;
        
    end
    
    err = sqrt(N2);
    
    if(k > kmax)
        warning('la fonction diverge');
    end
    
end

    