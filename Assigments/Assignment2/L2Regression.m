
function W=L2Regression(X,Y, lambda)
    extendedX = extendInput(X);
    I = eye(length(extendedX));
    W = pinv(X'*X + I.*lambda)*X*Y;
end
