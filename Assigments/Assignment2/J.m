%Calculate the cross-entrophy error function
function res = J(X, Y, W)
    res = -sum (Y.*log(sigmoid(X*W)) + (1.-Y).*log(1 .- sigmoid(X*W)));
end
