%Renvoie l'approximation de la d�riv�e de la fonction funct par la m�thode
%de la s�cante
function y = df_S(funct,x1,x2 )
y=((feval(funct,x1) - feval(funct,x2))/(x1-x2));
end

