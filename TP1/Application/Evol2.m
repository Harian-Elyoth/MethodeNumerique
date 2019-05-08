function[x ,k,err]=Evol2(x0, u0, dt, eps,kmax)
    G = 6 * 10^-11;
    mT = 6 * 10^24;
    x = x0;
    err = 2*eps;
    k = 0;
    while(k < kmax)
        if(err < eps)
            break
        end
        xtemp = x;
        x = x - (xtemp + dt*(u0 + dt* -((G*mT))/(x*x)))/df_DFevo(x, u0, dt);
        err = norm(xtemp - x);
        k = k + 1;
    end
    if(err > eps)
        warning('La fonction diverge');
    end
end
    