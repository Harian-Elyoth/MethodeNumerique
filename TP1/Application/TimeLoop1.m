function [y, u, tempsTotal] = TimeLoop1(x0, u0, T, dt)
    tempsTotal = 0;
    y(1) = x0;
    u(1) = u0;
    i = 1;
    while((tempsTotal < T) && (y(i) > 6399) &&(y(i) < 6699))
        %300 km correspond à une orbite standard sa vitesse 
        %est d'environ 8 km/s (Selon futura sciences)
        if(y(i) < 6399)
            break
        end
        if(y(i) > 6699)
            break
        end
        [y(i+1), u(i+1)] = Evol1(y(i), u(i), dt);
        tempsTotal = tempsTotal + dt;
        i = i + 1;
    end
    if(y(i) > 6699) %Si on attend l'orbite (ce n'est que pour représenter la mise en orbite sur le graphe.
        for j = i:2*i
            y(j+1) = y(j);
            u(j+i) = u(j);
        end
    end
end