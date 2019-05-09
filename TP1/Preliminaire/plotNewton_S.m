close all; clear all;
clc;

% figure(1);
% 
% for i = 1:10
%     [x, k(i), err(i)] = Newton_S(@fonction1, 1, 1.e-50, i);
% end
% semilogy(k,err);
% title('err : f(x) = x/2');
% hold on
% 
% clear k; clear err;
% figure(2);
% 
% for i = 1:10
%     [x, k(i), err(i)] = Newton_S(@fonction2, 1, 1.e-50, i);
% end
% semilogy(k,err);
% title('err : f(x) = 2*x');
% hold on
% 
% clear k; clear err;
% figure(3);

for i = 1:25
    [x, k(i), err(i)] = Newton_S(@fonction3, 1, 1.e-16, i);
end
semilogy(k,err);
title('err : x² - 1/2');
xlabel('nombre iteration k');
ylabel('erreur');
hold on