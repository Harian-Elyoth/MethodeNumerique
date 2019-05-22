function [X, err, k] = GradientsConjugues(A, X0, B, tol, kmax)

    X = X0;
    err = A*X - B;
    D = err;
    k = 0;
    N2 = prod_scal(err, err);
    while( sqrt(N2) > tol && k < kmax)
        
        AD = A*D;
        p = N2/prod_scal(D, AD);
        X = X - p*D;
        err = err - p*AD;
        temp = N2;
        N2 = prod_scal(err, err);
        alpha = N2 / temp;
        D = err - alpha*D;
        k = k + 1;
        
    end
    
    if (k == kmax)
        warning('La fonction diverge');
    end
end