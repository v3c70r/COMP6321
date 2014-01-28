%Poly nomial regression, return weight while giving training set X, Y and order d
%Take original X, Y and d as parameters
function W=PolyRegress(X, Y, d, norm="no")

    extendX = extendInput(X, d, norm);
    W = pinv(extendX'*extendX)*extendX'*Y;

end
