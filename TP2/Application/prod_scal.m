function x = prod_scal(A,B)
    taille = size(A,1);
    x = 0;
    for i=1:taille
        x = x + (A(i,1)*B(i,1));
    end
end