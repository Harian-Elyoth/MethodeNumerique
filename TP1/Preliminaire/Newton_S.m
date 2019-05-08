%La méthode de Newton consiste en l'algorithme de descente utilisé
%précedemment en prenant pour pente l'inverse de l'approximation de la
%dérivée en x(n) par la méthode de la sécante.
%On cherche à augmenter l'ordre de convergence.

%Renvoie la valeur approchée de x à eps près, le numéro de la dernière
%itération  et l'erreur commise.
%Prends en paramètre l'adresse de la fonction  le
%premier terme x_0 , la tolérance eps et le nombre d'itérations maximum.
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