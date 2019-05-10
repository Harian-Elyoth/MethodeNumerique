function [X, err, k] = GradientsConjugues(X0, prodA, B, tol, kmax)

    X = X0;
    err = prodA(X) - B;
    D = err;
    k = 0;
    while(prod_scal(err, err) > tol)
        
        p = (prod_scal(err, D))/prod_scal(err, prodA(D));
        
        X = X - p*D;
        
        err = prodA(X) - B;
        
        alpha = prod_scal(err, prodA(D))/prod_scal(D, prodA(D))
        
        D = err - alpha * D;
        
        k = k + 1;
        
    end;
    
    if (k > kmax)
        warning('La fonction diverge');
    end
end