function [F] = funct(X, O)

F = zeros(size(0, 2), 1);
j = 0;
i=1;
while(i <=  size(O, 2))
    j=j+1;
    F(j, 1) = X(1, 1) + X(3, 1)*cos(X(5, 1))*cos(O(3, i)) - X(4, 1)*sin(X(5, 1))*sin(O(3, i)) - O(1, i);
    j=j+1;
    F(j, 1) = X(2, 1) + X(3, 1)*sin(X(5, 1))*cos(O(3, i)) - X(4, 1)*cos(X(5, 1))*sin(O(3, i)) - O(2, i);
    i=i+1;
end
end

