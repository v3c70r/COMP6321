%Implement linear regression on traing set X,Y
%Return a matrix of weight
function W = LinearRegression(X, Y)

W = pinv(X'*X)*X'*Y;

end
