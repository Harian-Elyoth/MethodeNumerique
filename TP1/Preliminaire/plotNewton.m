close all; clear all;
clc

%Les figures 1 et 2 representent l'erreur sur des fonctions linéaires et ne
%sont donc pas nécéssaires

% figure(1);
% 
% for i = 1:10
%     [x, k(i), err(i)] = Newton(@fonction1, @df1, 1, 1.e-50, i);
% end
% semilogy(k,err);
% title('err : f(x) = x/2');
% xlabel('nombre iteration k');
% ylabel('erreur');
% hold on
% 
% figure(2);
% 
% for i = 1:10
%     [x, k(i), err(i)] = Newton(@fonction2, @df2, 1, 1.e-50, i);
% end
% semilogy(k,err);
% title('err : f(x) = 2*x');
% xlabel('nombre iteration k');
% ylabel('erreur');
% hold on
% 
% clear k; clear err;
figure(3);

for i = 1:7
    [x, k(i), err(i)] = Newton(@fonction3, @df3, 1, 1.e-16, i);
end
semilogy(k,err);
xlabel('nombre iteration k');
ylabel('erreur');
title('err : x^2 - 1/2');
hold on


