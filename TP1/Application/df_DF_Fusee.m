%Renvoie l'approximation de la dérivée de la fonction funct par la méthode
%des différences finies
function y = df_DF_Fusee(funct, x)
    h = 1e-8;
    y = (feval(funct, x+h)-feval(funct, x))/h
end