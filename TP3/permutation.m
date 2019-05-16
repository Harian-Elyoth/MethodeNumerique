function [A, B] = permutation (A0, B0)

A = A0;
B = B0;
N = size(B0, 1);

k = 1;

for i = 2 : N
    if(A(i, 1) > A(k, 1)) 
        k = i;
    end
end
for i = 1 : N
    temp = A(k, 1);
    A(k, 1) = A(1, 1);
    A(1, 1) = temp;
end
temp = B(k, 1);
B(k, 1) = B(1, 1);
B(1, 1) = temp;
end
