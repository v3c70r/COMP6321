%Calculate the cost function of given X, Y and W
function cost = J(X, Y, W)
cost = sum((X*W - Y).^2)/2;

end
