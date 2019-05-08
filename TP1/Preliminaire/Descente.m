
%Renvoie la valeur approch�esde x � eps pr�s, le num�ro de la derni�re
%it�ration  et l'erreur commise

%Prends en param�tre l'adresse de la fonction , la valeur de la pente, le
%premier terme x_0 ,la tol�rance eps et le nombre d'it�ration maximale

function [x,k,err]= Descente(funct,p,x0,eps,kmax)

    %initialisation
    k = 0;
    err = 2*eps ;
    x = x0;

    while(abs(err) > eps) %cf cours 
        x = x - err*p;
        err = feval(funct,x);
        k = k+1 ;
        if (k == kmax) %on consi�re que kmax est un nombre suffisation d'it�ration pour que la fonction converge
            warning('La fonction ne converge pas ! ');
            break;
        end
    end
end
    