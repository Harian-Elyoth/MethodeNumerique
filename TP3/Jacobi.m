function [X, err, k] = Jacobi(A, X0, B, tol, kmax)
   
X = X0;
taille = size(B);
Serr = zeros(taille);
k = 0;
err = A*X - B;
N2 = prod_scal(err, err);

while ((sqrt(N2) > tol) && (k < kmax))
    X = prodMNJacobi(A, X, B);
    err = A*X - B; 
    N2 = prod_scal(err, err);
    k = k + 1;
    
end
if(k == kmax)
    warning('La fonction diverge');
end
err =sqrt(N2);
end
            