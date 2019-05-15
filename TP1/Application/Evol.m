% Fonction qui renvoie la position x de la fusee apres un temps dt
% Elle prend en parametre la position initiale de la fusee x0 et le temps dt
% ainsi que la vitesse initiale u0


function [x] = Evol(x0, dt, u0)
    
    kmax = 1000;
    eps = 1.e-10;
    h = 1.e-8;
    
    x = Newton_DF_Fusee(@Position, @df_DF_Fusee, x0 ,eps, kmax, h, u0, dt);
   
    

end

