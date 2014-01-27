%Calculate the cost function of given X, Y and W
function cost = J(X, Y, W, d)

    extendX = extendInput(X,  d);
    cost = sum((extendX*W - Y).^2)/2;
end
