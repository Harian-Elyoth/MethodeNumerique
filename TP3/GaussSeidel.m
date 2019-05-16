function [X, err, k] = GaussSeidel(A, X0, B, tol, kmax)

X = X0;
N = size(B, 1);
k = 0;
err = A*X - B;
N2 = prod_scal(err, err);

while ((sqrt(N2) > tol) && (k < kmax))
    err = A*X - B;
    for i = N : -1 : 1
        sum1 = 0;
        for j = 1 : i -1
            sum1 = sum1 + A(i, j)*X(j, 1);
        end
        sum2 = 0;
        for j = i + 1 : N
            sum2 = sum2 + A(i, j)*X(j, 1);
        end
        X(i, 1) = (B(i, 1) - sum1 - sum2)/A(i, i);
    end
    N2 = prod_scal(err, err);
    k = k + 1;
    
end
if(k == kmax)
    warning('La fonction diverge');
end
err = sqrt(N2);
end
            