function X = MatVecCSR(A, I, J, B)
    N = size(B, 1);
    X = zeros(1, N);
    
    
    for i = 1:N 
        if(i == N)

            temp = I(i, 1)+1; 
            while((temp-1) <= I(i + 1, 1))
                X(1, i) = X(1, i) + A(temp, 1)*B(J(temp, 1) + 1, 1);
                temp = temp + 1;

            end    
        else 
            temp = I(i, 1)+1; 
            while((temp) <= I(i + 1, 1))
                X(1, i) = X(1, i) + A(temp, 1)*B(J(temp, 1) + 1, 1);
                temp = temp + 1;

            end
        end
    end
    X = X';
end