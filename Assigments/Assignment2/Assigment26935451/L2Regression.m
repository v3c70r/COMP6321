
function W=L2Regression(X,Y, lambda)
    extendedX = extendInput(X);
    I = eye(size(extendedX)(2));
    W = pinv(extendedX'*extendedX + lambda.*I)*extendedX'*Y;
end
