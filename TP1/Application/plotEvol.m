clear all;
close all;
clc;
temps = 200;

[y1, u1, time1] = TimeLoop(7400, 0, temps, 0.1);

figure(1);
plot(time1, y1);
title('chute de la fusée située a 1000 metre');
xlabel('temps en seconde');
ylabel('altitude en kilometre');
figure(2);
plot(time1, u1);
title('vitesse de la fusée en chute située a 1000 metre');
xlabel('temps en seconde');
ylabel('vitesse en m.s^-1');

[y2, u2, time2] = TimeLoop1(6400, 136, temps, 0.1);

figure(3);
plot(time2, y2);
title('Altitude de la fusée avec vitesse initiale u0 = 136');
xlabel('temps en seconde');
ylabel('Altitude en kilometre');