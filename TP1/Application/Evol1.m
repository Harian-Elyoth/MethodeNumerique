function [x, u] = Evol1(x0, u0, dt)
    G = 6,674 * 10^(-11);
    mT = 5,972 * 10^24;
    x = x0 + dt*(u0 + dt* -(G*mT)/x0*x0);
    u = (x - x0)/dt;
end
