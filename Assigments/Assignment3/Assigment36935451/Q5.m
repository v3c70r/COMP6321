%This function is used to implement Q5
function Q5()
    X = load('wpbcx.dat');
    Y = load('wpbcy.dat');

    %Perform 2-fold validation
    X1 = X(1:length(X)/2,:);
    X2 = X(length(X)/2+1:end,:);

    Y1 = Y(1:length(X)/2);
    Y2 = Y(length(X)/2+1:end);

    maxK = 1:40;
    testErrorRates= [];
    trainingErrorRates= [];
    %errorRate(X1, Y1, 1, X1, Y1)
    for i = 1:length(maxK)
        trainingError = (errorRate(X1, Y1, i, X1, Y1) + errorRate(X2, Y2, i, X2, Y2))/2;%average training error
        testError = (errorRate(X1, Y1, i, X2, Y2) + errorRate(X2, Y2, i, X1, Y1))/2;%average test error
        testErrorRates = [testErrorRates testError];
        trainingErrorRates = [trainingErrorRates trainingError];
    end
    clf();
    hold on;
    plot(maxK, testErrorRates)
    plot(maxK, trainingErrorRates,'4')
    print('Q5.eps', '-depsc');
    hold off;


end
