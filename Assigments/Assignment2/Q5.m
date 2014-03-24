%Code for solving Q5

function Q5()
    %In this code, I will adopt Newton-Raphson algorithm to find the weight that minimum the cost function J(w)
    X = load('wpbcx.dat');
    Y = load('wpbcy.dat');

    extendX = [ ones(size(X)(1), 1), X];
    Winit = ones( size(extendX)(2), 1 );
    J(extendX, Y, Winit)

    W = NewtonRaphson(extendX, Y, Winit, 20);


    %First two parameters
    [pi, miu0, miu1, sigma] = singleBayes(extendX(:,1:2), Y);
    bayesClassifier(pi, miu0, miu1, sigma, extendX(5,1:2))

    %All parameters
    [pi, miu0, miu1, sigma] = singleBayes(extendX, Y);
    bayesClassifier(pi, miu0, miu1, sigma, extendX(5,:))
    



end

