%Implement linear regression on traing set X,Y
%Return a matrix of weight
function W = LinearRegression(X, Y)
    extendX = extendInput(X, 1);

    W = pinv(extendX'*extendX)*extendX'*Y;

end
