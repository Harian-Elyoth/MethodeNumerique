function [X, err1, k] = GradientsConjugues(X0, prodA, B, tol, kmax)

    X = X0;
    err0 = prodA(X) - B;
    D = err0;
    k = 0;
    while(prod_scal(err0, err0) > tol)
        
        alpha = prod_scal(err0', err0)/prod_scal(D', prodA(D));
        
        X = X + alpha*D;
        
        err1 = err0 - alpha*prodA(D);

        beta = prod_scal(err1', err1)/(prod_scal(err0', err0));
        
        D = err1 + prod_scal(beta, D);
        
        k = k + 1;
        
        err0 = err1;
        
    end
    
    if (k > kmax)
        warning('La fonction diverge');
    end
end