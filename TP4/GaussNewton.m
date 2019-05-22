function [X, err3, k] = GaussNewton(funct, O, X0, tol, w, kmax)
X = X0;
% err = sqrt(prod_scal(funct(X, O),funct(X, O)));
% err_tmp = 2*err;
err3 = sqrt(prod_scal(funct(X, O),funct(X, O)));
k = 1;
while(err3 > tol)
    if (k == kmax)
        break;
    end
    Jf = Jacobian(X, O);
    F=funct(X, O);
    Delta = -GradientsConjugues(Jf'*Jf, X,Jf'*F, tol, kmax);
%     gamma = 1;
%     while( err_tmp >= err)
%         xtmp = X + gamma*Delta;
%         F=funct(xtmp, O);
%         err_tmp = sqrt(prod_scal(F,F));
%         gamma = w*gamma;
%         disp('2e boucle');
%     end 
%     X = xtmp;
    X=X + Delta;
    err3=sqrt(prod_scal(Delta,Delta));
%     err = err_tmp;
    k = k+1
end

if( k > kmax )
    warning('La fonction diverge');
end
end
        