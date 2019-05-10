function X = MatVec(A, I, J, B)
    
    k = 1;
    for k = 1:size(B, 1) %Ligne
        for l = 1:size(B, 1) %Colone
            X(k, 1) = B(l, 1) * A(k, l)
        end
    end
