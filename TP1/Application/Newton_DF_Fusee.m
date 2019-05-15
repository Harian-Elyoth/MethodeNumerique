% Fonctiont realisant l'algorithme de Newton dans le cadre de l'application
% pour la fusee, elle prend en parametre supplementaire la vitesse initiale
% u0 et le petit temps dt.
% (voir Newton_DF pour plus de details)

function [x, k, err] = Newton_DF_Fusee(funct, df_DF, x0, eps, kmax, h, u0, dt)
    
    [x, k, err] = Descente_Newton_Fusee(funct, df_DF, x0, eps, kmax, h, u0, dt);

end
