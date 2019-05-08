%La m�thode de Newton consiste en l'algorithme de descente utilis�
%pr�cedemment en prenant pour pente l'inverse de l'approximation de la
%d�riv�e en x(n) par la m�thode de la s�cante.
%On cherche � augmenter l'ordre de convergence.

%Renvoie la valeur approch�e de x � eps pr�s, le num�ro de la derni�re
%it�ration  et l'erreur commise.
%Prends en param�tre l'adresse de la fonction  le
%premier terme x_0 , la tol�rance eps et le nombre d'it�rations maximum.
function[x,k,err]=Newton_S(funct,x0,eps,kmax)

%initialisation
    k = 0;
    err = 2*eps ;
    x = x0;
    x1=x0+1.e-8;

    while(k < kmax)
        if(err < eps)
            break
        end
        xtemp = x;
        x = x - feval(funct, x)/df_S(funct, x, x1);
        err = norm(xtemp - x);
        k = k + 1;
    end
    if(err > eps)
        warning('La fonction diverge');
    end
end