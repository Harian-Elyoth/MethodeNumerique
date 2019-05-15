function [X, err, k] = DescentePasOptimalCSR(AX, AI, AJ, X0, B, tol, kmax)
    
    X = X0;
    err = MatVecCSR(AX, AI, AJ, X)-B;
    N2 = prod_scal(err, err);
    k = 0;
    
    while(sqrt(N2) > tol)
        
        p = N2/prod_scal(err, MatVecCSR(AX, AI, AJ, err));
        
        X = X-p*err;
        
        err = MatVecCSR(AX, AI, AJ, X)) - B;
        
        N2 = prod_scal(err, err);
        
        k = k + 1;
        
    end
    
    err = sqrt(N2);
    
    if(k > kmax)
        warning('la fonction diverge');
    end
    
end
