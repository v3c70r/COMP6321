%This function is used to solve Q1.

function Q1()
    X = load("hw2x.dat");
    Y = load("hw2y.dat");

    clf();

    figure(1);
    hold on;
    for lambda=0:1:100
        W = L2Regression(X(1:80,:), Y(1:80), lambda);
        newY = extendInput(X(1:80, :)) * W;
        testY = extendInput(X(81:99, :))*W;
        rootMeanSqrErr = sqrt( (sum((newY-Y(1:80)).^2)/length(Y(1:80))));
        rootMeanSqrErrTest = sqrt( (sum((testY-Y(81:99)).^2)/length(Y(81:99))));
        scatter(lambda, rootMeanSqrErr );
        scatter(lambda, rootMeanSqrErrTest,[],[2 0 0]);     %Red
    end
    hold off;

    print('L1Err.eps', '-depsc');

    

    figure(2);
    hold on;
    for lambda=0:1:100
        W = L2Regression(X(1:80,:), Y(1:80), lambda);
        scatter(lambda, W(1),[], [1 0 0]);
        scatter(lambda, W(2),[], [0 1 0]);
        scatter(lambda, W(3),[], [0 0 1]);
        scatter(lambda, W(4),[], [1 0 1]);
    end
    hold off;
    print('L1weight.eps', '-depsc');


    %L2 regression
    figure(3);
    hold on;
    for lambda=0:1:100
        W = L2Regression(X, Y, 1);
        newY = extendInput(X(1:80, :)) * W;
        testY = extendInput(X(81:99, :))*W;
        rootMeanSqrErr = sqrt( (sum((newY-Y(1:80)).^2)/length(Y(1:80))));
        rootMeanSqrErrTest = sqrt( (sum((testY-Y(81:99)).^2)/length(Y(81:99))));
        scatter(lambda, rootMeanSqrErr );
        scatter(lambda, rootMeanSqrErrTest,[],[2 0 0]);     %Red
    end
    hold off;
    print('L2err.eps', '-depsc');

    figure(4);
    hold on;
    for lambda=0:1:100
        W = L2Regression(X(1:80,:), Y(1:80), lambda);
        scatter(lambda, W(1),[], [1 0 0]);
        scatter(lambda, W(2),[], [0 1 0]);
        scatter(lambda, W(3),[], [0 0 1]);
    end;
    hold off;
    print('L2weight.eps', '-depsc');


end
