
clear all;
close all;
clc;


j = 1;
for N = 1:10000
    j=j+1;
    for i = 1:N
        x(i, 1) = 2;
        b(i, 1) = i;
    end
    [X, err, k] = GradientsConjugues(x, @prodA, b, 1.e-10, 100);
    nbOp(j) = k*12*N;
end

figure(1);
plot(1:10001, nbOp);
