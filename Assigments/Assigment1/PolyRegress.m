%Poly nomial regression, return weight while giving training set X, Y and order d
function W=PolyRegress(X, Y, d)
    for n=2:d
        X=[X,X(:,2).^n];
    end
    W = pinv(X'*X)*X'*Y;

    err = J(X, Y, W)
end
