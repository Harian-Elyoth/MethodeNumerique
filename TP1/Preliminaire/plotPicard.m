close all; clear all;


figure(1);

    for i = 1:100
        [x1, k1(i), err1(i)] = Descente(@fonction1, 0.1, 1, 1.e-16, i);
        [x2, k2(i), err2(i)] = Descente(@fonction1, 0.2, 1, 1.e-16, i);
        [x3, k3(i), err3(i)] = Descente(@fonction1, 0.3, 1, 1.e-16, i);

    end
    semilogy(k1,err1, k2, err2, k3, err3);
    title('err : f(x) = x/2');
    legend('p = 0.1', 'p = 0.2', 'p = 0.3');
    hold on

% 
% clear k; clear err;
% figure(2);
% 
%     for i = 1:100
%         [x1, k1(i), err1(i)] = Descente(@fonction2, 0.1, 1, 1.e-50, i);
%         [x2, k2(i), err2(i)] = Descente(@fonction2, 0.01, 1, 1.e-50, i);
%         [x3, k3(i), err3(i)] = Descente(@fonction2, 0.001, 1, 1.e-50, i);
% 
%     end
%     semilogy(k1,err1, k2, err2, k3, err3);
%     title('err : f(x) = x/2');
%     hold on
% 
% 
% clear k; clear err;
% 
% 
% figure(3);
% 
%     for i = 1:100
%         [x1, k1(i), err1(i)] = Descente(@fonction3, 0.1, 1, 1.e-50, i);
%         [x2, k2(i), err2(i)] = Descente(@fonction3, 0.01, 1, 1.e-50, i);
%         [x3, k3(i), err3(i)] = Descente(@fonction3, 0.001, 1, 1.e-50, i);
% 
%     end
%     semilogy(k1,err1, k2, err2, k3, err3);
%     title('err : f(x) = x/2');
%     hold on
% 
% 
% clear k; clear err;
% 
% 
% figure(4);
% 
%     for i = 1:100
%         [x1, k1(i), err1(i)] = Descente(@fonction5, 0.1, 1, 1.e-50, i);
%         [x2, k2(i), err2(i)] = Descente(@fonction5, 0.01, 1, 1.e-50, i);
%         [x3, k3(i), err3(i)] = Descente(@fonction5, 0.001, 1, 1.e-50, i);
% 
%     end
%     semilogy(k1,err1, k2, err2, k3, err3);
%     title('err : f(x) = x/2');
%     hold on
% 
% 
% clear k; clear err;
% 
