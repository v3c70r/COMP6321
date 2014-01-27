%Poly nomial regression, return weight while giving training set X, Y and order d
%Take original X, Y and d as parameters
function W=PolyRegress(X, Y, d)

    extendX = extendInput(X, d);
    W = pinv(extendX'*extendX)*extendX'*Y;

end
