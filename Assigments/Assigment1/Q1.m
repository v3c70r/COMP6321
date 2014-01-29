%Main function for question 1
%All functions, take original X as input if they need.
function Q1()

    %(a) Load training set

    X = load('hw1x.dat');
    Y = load('hw1y.dat');



    %get weight from linear regeression
    W = LinearRegression(X, Y);

    %Plot points and regression result
    PlotNSave(X, Y, W, 1, 'fig/linear.eps');

    %plot(range, res);
    err =  J(X, Y, W, 1);
    disp('Linear Regression'), disp(err);


    %Polynomial Regression
    %Quadratic Regression

    W = PolyRegress(X, Y, 2);
    PlotNSave(X, Y, W, 2, "fig/quad.eps");
    err =  J(X, Y, W, 2);
    disp("Quadratic Regression"), disp(err);

    %Cubic PolyRegression

    W = PolyRegress(X, Y, 3);
    PlotNSave(X, Y, W, 3, "fig/cubic.eps");
    err = J(X, Y, W, 3);
    disp("Qubic Regression"), disp(err);

    %heigher order PolyRegression
    %d = 7;
    %W = PolyRegress(X, Y, d);
    %PlotNSave(X, Y, W, d, "fig/test.eps");
    %err = J(X, Y, W, d);
    %disp(err);

    kFoldValidation(X, Y, 10, 5);

    %heigher order PolyRegression
    d = 6;
    W = PolyRegress(X, Y, d);
    PlotNSave(X, Y, W, d, "fig/6-order.eps");
    err = J(X, Y, W, d);
    disp("6-order"), disp(err);
    %Now, normalize the input data X

    %get weight from linear regeression

    %%Plot points and regression result
    %PlotNSave(X, Y, W, 1, "fig/linear_normalized.eps");
    %err =  J(X, Y, W, 1);
    %disp("Linear Regression Normalized"), disp(err);

    %%Quadratic Regression

    %W = PolyRegress(X, Y, 2);
    %PlotNSave(X, Y, W, 2, "fig/quard_normalize.eps");
    %err =  J(X, Y, W, 2);
    %disp("Quadratic Regression"), disp(err);


    %heigher order PolyRegression
    kFoldValidation(X, Y, 10, 5, "yes");

    d = 6; 
    W = PolyRegress(X, Y, d, "yes");
    PlotNSave(X, Y, W, d, "fig/6-order_normalized.eps", "yes");
    err = J(X, Y, W, d, "yes");
    disp("6-order normalized"), disp(err);

end
