function [y] = df4(x)
    y = [-x(2)*sin(x(1)*x(2)) -x(1)*sin(x(1)*x(2)) ; 3*x(1)^2 + 2*x(2)^2]
end