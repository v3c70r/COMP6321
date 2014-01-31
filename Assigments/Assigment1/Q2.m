%Main function for question 1
%All functions, take original X as input if they need.
function Q2()
    disp('This function is writen for solve the question 2 of first Machine Learning assigment');
    X = load('hw1x.dat');
    Y = load('hw1y.dat');
    U = eye(length(X));
    %get weight from linear regeression
    W = WeightedLinearRegress(X, Y, U);

    %Plot points and regression result
    %PlotNSave(X, Y, W, 1, 'fig/Weightedlinear.eps');

    %plot(range, res);
    err =  J(X, Y, W, 1);
    disp('Linear Regression'), disp(err);

    %squareErrorVector = (extendInput(X,1)*W-Y).^2;
    [maximumSquareError, MaxIndex] = max(X);

    %Draw the whole stuff in range
    range = (min(X):0.01:max(X))';
    testMatrix = extendInput(range, 1);
    hold on;
    scatter(X,Y);

    for i=1.0:2.0

        plot(range, testMatrix*W);

        U(MaxIndex, MaxIndex) = 3.1;
        W = WeightedLinearRegress(X, Y, U);
        err =  J(X, Y, W, 1);
        disp('Linear Regression'), disp(err);
    end
end
