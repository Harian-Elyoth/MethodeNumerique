function X = MatVecCOO(A, I, J, B)
    N = size(B, 1);
    X = zeros(1, N);
    temp = 1;

    for i = 1:N 
        while((temp <= size(A, 1))&& I(temp, 1) == (i-1))
            X(1, i) = X(1, i) + A(temp, 1) * B(J(temp, 1) + 1, 1);
            if(temp <= size(A, 1))
                temp = temp + 1;
            end
        end
    end
end