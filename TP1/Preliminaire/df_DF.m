function y = df_DF(funct, x)
    h = 1e-8;
    y = (feval(funct, x+h)-feval(funct, x))/h
end