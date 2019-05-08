%Renvoie l'approximation de la dérivée de la fonction funct par la méthode
%de la sécante
function y = df_S(funct,x1,x2 )
y=((feval(funct,x1) - feval(funct,x2))/(x1-x2));
end

