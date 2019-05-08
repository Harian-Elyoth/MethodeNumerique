function [x, k, err] = Newton(funct, derive, x0, eps, kmax)
    x = x0;
    err = 2*eps;
    k = 0;
    while(k < kmax)
        if(err < eps)
            break
        end
        xtemp = x;
        x = x - (feval(funct, x)/feval(derive, x));
        err = norm(xtemp - x);
        k = k + 1;
    end
    if(err > eps)
        warning('La fonction diverge');
    end
end

        