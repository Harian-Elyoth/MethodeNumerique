clear all;
close all;
clc;
temps = 120;

[y, u, time] = TimeLoop1(6400, 100, temps, 0.00001*temps);


figure(1);
plot(y);
figure(2);
plot(u);