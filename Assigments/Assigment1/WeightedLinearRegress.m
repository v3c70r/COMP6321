%Implement linear regression on traing set X,Y and Training example U
%Return a matrix of weight
function W = WeightedLinearRegress(X, Y, U)

    extendX = extendInput(X, 1);
    size(extendX)
    size(U)

    W = pinv(extendX'*U*extendX)*extendX'*U*Y;

end
