% Fonction qui renvoit la position y de la fusee apres un temps T par pas
% de dt
% Elle prend en parametre la position initiale de la fusee x0, le temps
% total T, le pas de temps dt

function [x, t] = TimeLoop(x0, u0, T, dt)

    t = 0;
    x = x0;

    
    while(t < T)
        
        xprec = x;
        
        x = Evol(x,dt,abs(u0));
        
        u0 = (x - xprec)/dt; 
        
        if (x <= 0)
            warning('La fusee a atteint le sol terrestre !');
            break;
        end
        
        t = t + dt;

    end

end

