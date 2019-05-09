%La méthode de Newton consiste en l'algorithme de descente utilisé
%précedemment en prenant pour pente l'inverse de la dérivée théorie de la fonction.
%On cherche à augmenter l'ordre de convergence.

%Renvoie la valeur approchée de x à eps près, le numéro de la dernière
%itération  et l'erreur commise.
%Prends en paramètre l'adresse de la fonction  le
%premier terme x_0 , la tolérance eps et le nombre d'itérations maximum.

function [x, k, err] = Newton(funct, derive, x0, eps, kmax)
    x = x0;
    err = 2*eps;
    k = 0;
    while(abs(err) > eps)
        if(k == kmax)
            break
        end
        xtemp = x;
        x = x - (feval(funct, x)/feval(derive, x));
        err = norm(xtemp - x);
        k = k + 1;
    end
end

        