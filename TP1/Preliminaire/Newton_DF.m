
%La méthode de Newton consiste en l'algorithme de descente utilisé
%précedemment en prenant pour pente l'inverse de l'approximation de la
%dérivée en x(n) par la méthode des différences finies.
%On cherche à augmenter l'ordre de convergence.

%Renvoie la valeur approchée de x à eps près, le numéro de la dernière
%itération  et l'erreur commise.
%Prends en paramètre l'adresse de la fonction  le
%premier terme x_0 , la tolérance eps et le nombre d'itérations maximum.

function [x, k, err] = Newton_DF(funct, x0, eps, kmax)
    x = x0;
    err = 2*eps;
    k = 0;
    while(k < kmax)
        if(err < eps)
            break
        end
        xtemp = x;
        x = x - feval(funct, x)/df_DF(funct, x);
        err = norm(xtemp - x);
        k = k + 1;
    end
    if(err > eps)
        warning('La fonction diverge');
    end
end