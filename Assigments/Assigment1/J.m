%Calculate the cost function of given X, Y and W
function cost = J(X, Y, W, d, norm="no")

    extendX = extendInput(X,  d, norm);
    cost = sum((extendX*W - Y).^2)/2;
end
