clear all;
close all;
clc;

List_N=[10 100 1000 10000];
j=0;
for N = List_N;
    j=j+1;
    for i = 1:N
        x(i, 1) = 2;
        b(i, 1) = i;
    end;
    [X, err, k] = DescentePasOptimal(x, @prodA, b, 1.e-10, 100);
    nbOp(j) = k*12*N;
end
figure(1);
semilogx(nbOp, List_N);



