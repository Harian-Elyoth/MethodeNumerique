clear all; close all;
N = 500;
k = 1;
T0 = 25;
Tn = 100;

[X,iteration,err] = Temperature(T0,Tn,k,N);

n = (1:N);

plot(n,X);
title('Température en fonction des differents x');
xlabel('X');
ylabel('Température');