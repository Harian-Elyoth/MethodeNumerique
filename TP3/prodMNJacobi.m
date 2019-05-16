function X = prodMNJacobi(A, X0, B)
N=size(X0, 1);
for k = 1:N
    sum = 0;
    for i = 1:N
        if(k  ~= i)
            sum = sum + A(k, i) * X0(i, 1);
        end
    end
    X(k, 1) = (B(k, 1)-sum)/A(k, k);
end
end
