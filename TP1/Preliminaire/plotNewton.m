close all; clear all;
clc;

figure(1);

for i = 1:10
    [x, k(i), err(i)] = Newton(@fonction1, @df1, 1, 1.e-50, i);
end
semilogy(k,err);
title('err : f(x) = x/2');
xlabel('nombre iteration k');
ylabel('erreur');
hold on

figure(2);

for i = 1:10
    [x, k(i), err(i)] = Newton(@fonction2, @df2, 1, 1.e-50, i);
end
semilogy(k,err);
title('err : f(x) = 2*x');
xlabel('nombre iteration k');
ylabel('erreur');
hold on

clear k; clear err;
figure(3);

for i = 1:10
    [x, k(i), err(i)] = Newton(@fonction3, @df3, 1, 1.e-50, i);
end
semilogy(k,err);
xlabel('nombre iteration k');
ylabel('erreur');
title('err : x^2 - 1/2');
hold on

% clear k; clear err;
% figure(4);
% for i = 1:1000
%     x0=[1.;1.];
%     [x, k(i), err(i)] = Newton(@fonction4, @df4, x0, 1.e-50, i);
% end
% semilogy(k,err);
% title('err : f(x1, x2) = (cos(x1x2), x1³ + x2²)');
% hold on
% clear k; clear err;
