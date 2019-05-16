function X = remontee(M, B)
    
N = size(B, 1);

for i = N:1:-1
    sum = 0;
    for j = i+1:N
        sum = sum + M(i, j)*X(j, 1);
    end
    X(i, 1) = (B(i, 1) - sum)/M(i, i);
end
end