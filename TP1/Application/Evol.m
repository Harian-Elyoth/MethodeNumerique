function [x, u] = Evol(x0, u0, dt)
    G = 6,674 * 10^(-11);
    mT = 5,972 * 10^24;
    x = x0 + dt*(u0 + dt* -(G*mT)/x0*x0); %Ici, j'utilise la force de la position précédente, le pas étant généralement 
    %très petit, je peux négliger l'erreur DANS LE CADRE DE CE TP.
    u = (x - x0)/dt;
end
