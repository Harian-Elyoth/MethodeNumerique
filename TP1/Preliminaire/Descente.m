
%Renvoie la valeur approchéesde x à eps près, le numéro de la dernière
%itération  et l'erreur commise

%Prends en paramètre l'adresse de la fonction , la valeur de la pente, le
%premier terme x_0 ,la tolérance eps et le nombre d'itération maximale

function [x,k,err]= Descente(funct,p,x0,eps,kmax)

    %initialisation
    k = 0;
    err = 2*eps ;
    x = x0;

    while(abs(err) > eps) %cf cours 
        x = x - err*p;
        err = feval(funct,x);
        k = k+1 ;
        if (k == kmax) %on consière que kmax est un nombre suffisation d'itération pour que la fonction converge
            warning('La fonction ne converge pas ! ');
            break;
        end
    end
end
    