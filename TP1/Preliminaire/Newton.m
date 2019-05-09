%La m�thode de Newton consiste en l'algorithme de descente utilis�
%pr�cedemment en prenant pour pente l'inverse de la d�riv�e th�orie de la fonction.
%On cherche � augmenter l'ordre de convergence.

%Renvoie la valeur approch�e de x � eps pr�s, le num�ro de la derni�re
%it�ration  et l'erreur commise.
%Prends en param�tre l'adresse de la fonction  le
%premier terme x_0 , la tol�rance eps et le nombre d'it�rations maximum.

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

        