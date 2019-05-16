function X = prod_scal(A, B) %dir = 1 : colonne / dir = 2 : ligne
    X = 0;
    for i = 1:size(A, 1)
        
        X = X + A(i)*B(i);
        
    end
end