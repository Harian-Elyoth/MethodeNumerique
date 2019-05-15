function y = Position(x, x0, u0, dt)
    G = 6 * 10^-11;
    mT = 6 * 10^24;
    y = x - x0 + dt * ( u0 + dt * (-G * mT)/x^2);
end
