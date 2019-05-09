
%La m�thode de Newton consiste en l'algorithme de descente utilis�
%pr�cedemment en prenant pour pente l'inverse de l'approximation de la
%d�riv�e en x(n) par la m�thode des diff�rences finies.
%On cherche � augmenter l'ordre de convergence.

%Renvoie la valeur approch�e de x � eps pr�s, le num�ro de la derni�re
%it�ration  et l'erreur commise.
%Prends en param�tre l'adresse de la fonction  le
%premier terme x_0 , la tol�rance eps et le nombre d'it�rations maximum.

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