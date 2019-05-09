close all; clear all;

clc;

%Figure 1 et 2 representent l'erreur sur des fonctions linéaire, elles ne
%sont donc pas nécéssaire.

% 
% figure(1);
% 
% for i = 1:10
%     [x, k(i), err(i)] = Newton_DF(@fonction1, 1, 1.e-50, i);
% end
% semilogy(k,err);
% title('err : f(x) = x/2');
% hold on
% 

% 
% figure(2);
% 
% for i = 1:10
%     [x, k(i), err(i)] = Newton_DF(@fonction2, 1, 1.e-50, i);
% end
% semilogy(k,err);
% title('err : f(x) = 2*x');
% hold on
% 
% clear k; clear err;
% figure(3);

for i = 1:10
    [x, k(i), err(i)] = Newton_DF(@fonction3, 1, 1.e-16, i);
end
semilogy(k,err);
xlabel('nombre iteration k');
ylabel('erreur');
title('err : x^2 - 1/2');
hold on
