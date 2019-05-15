clear all;
close all;
clc;
e = 1:1001;


j = 1;
for N = 1:1000
    j=j+1;
    for i = 1:N
        x(i, 1) = 2;
        b(i, 1) = i;
    end
    [X1, err1, k1] = DescentePasOptimal(x, @prodA, b, 1.e-8, 500);
    nbOp1(j) = k1*12*N;
end

figure(1);
semilogx(e, nbOp1);
title('methode de la descente a pas Optimal');
xlabel('Taille de la matrice');
ylabel('Nombre dOperation');


j = 1;
for N = 1:1000
    j=j+1;
    for i = 1:N
        x(i, 1) = 2;
        b(i, 1) = i;
    end
    [X1, err2, k2] = GradientsConjugues(x, @prodA, b, 1.e-8, 500);
    nbOp2(j) = k2*5*N;
end

figure(2);
semilogx(e, nbOp2);
title('Methode des gradients conjugues');
xlabel('Taille de la matrice');
ylabel('Nombre dOperation');


figure(3);
semilogx(e, nbOp2, e, nbOp1);
title('Comparaison des deux méthodes');
legend('Gradient Conjugués', 'Descente Pas Optimal');
xlabel('Taille de la matrice A');
ylabel('Nombre dOpération');

% Test entre prodA et COO
% clear all;
% 
% AX = [3 ; -1 ; -1; 3 ;-1; -1; 3];
% AICOO = [0 ; 0; 1; 1; 1; 2; 2];
% AICSR = [0 ; 2 ; 5 ; 6];
% AJ = [0 ; 1; 0; 1; 2; 1; 2];
% X0 = [2 ; 2; 2];
% B = [1 ; 2 ; 3];
% 
% [X1, err1, k1] = GradientsConjuguesCOO(AX, AICOO, AJ, X0, B, 1e-8, 10000);
% [X2, err2, k2] = GradientsConjugues(X0, @prodA, B, 1e-8, 10000);
% 
% 
