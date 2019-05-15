function [X, err1, k] = GradientsConjuguesCOO(AX, AI, AJ, X0, B, tol, kmax)

    X = X0;
    err0 = MatVecCOO(AX, AI, AJ, X) - B;
    D = err0;
    k = 0;
    while(prod_scal(err0, err0) > tol)
        
        alpha = prod_scal(err0', err0)/prod_scal(D', MatVecCOO(AX, AI, AJ, D));
        
        X = X + alpha*D;
        
        err1 = err0 - alpha*MatVecCOO(AX, AI, AJ, D);

        beta = prod_scal(err1', err1)/(prod_scal(err0', err0));
        
        D = err1 + prod_scal(beta, D);
        
        k = k + 1;
        
        err0 = err1;
        
    end
    
    if (k > kmax)
        warning('La fonction diverge');
    end
end