function [x,iteration,N2] = GradientsConjuguesTemp(x0,prodA,B,tol,kmax,k,N)
    x = x0; iteration = 0;
    err = feval(prodA,x,k,N) - B;
    D = err;
    N2 = prod_scal(err,err);
    while (sqrt(N2) > tol && iteration < kmax)
       w = feval(prodA,D,k,N);
       p = N2/prod_scal(err,w);
       x = x - p*D;
       err = feval(prodA,x,k,N) - B;
       alpha = prod_scal(err,w)/prod_scal(D,w);
       D = err - alpha*D;
       N2 = prod_scal(err,err);
       iteration = iteration + 1;
    end
    if iteration >= kmax
        warning('La fonction ne converge pas !');
    end
    N2 = sqrt(N2);
end