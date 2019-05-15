%Renvoie l'approximation de la d�riv�e de la fonction funct par la m�thode
%des diff�rences finies
function y = df_DF_Fusee(funct, x)
    h = 1e-8;
    y = (feval(funct, x+h)-feval(funct, x))/h
end