% Fonction realisant l'algorithme de Picard qui determine une solution de
% l'equation f(x) = 0

% Cette Fonction prend en entree une fonction funct qui est ici la fonction 
% qui calcul la position de la fusee apres un temps dt, sa derivee df, 
% une position initiale de la fusee x0, 
% la tolerance eps, le nombre d'iteration maximale kmax et le parametre de
% la derivee h

% Elle renvoie une solution x a eps pres, le nombre d'iteration k et l'erreur err

function [ x, k, err ] = Descente_Newton_Fusee(funct, df, x0, eps, kmax, h, u0, dt)
    
    x = x0;
    
    % On prend comme erreur initiale 2 fois la tolerance
    err = 2*eps;
    k = 0;
    
    % On s'arrete si l'erreur et superieur a la tolerance ou si l'on a
    % atteint le nombre d'iteration maximum
    
    while(abs(err)>eps && k < kmax)
            
            % Ici, on utilise l'algorithme de Newton c'est a dire qu'on
            % prend p = 1/f'(x) avec f la fonction position
            xtemp = x - (feval(funct, x, x0, u0, dt)/feval(df, funct, x, h, x0, u0, dt));
            err = abs(xtemp - x);
            x = xtemp;
            k = k + 1;
    end
    if(k == kmax)
        warning('Pas de convergence !');
    end
end
