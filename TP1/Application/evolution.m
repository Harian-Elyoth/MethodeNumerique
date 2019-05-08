function x = evolution(x0, u0, dt)
    G = 6 * 10^-11;
    mT = 6 * 10^24;
    x = x0 + dt * ( u0 + dt * (-G * mT)/x0^2);
end
