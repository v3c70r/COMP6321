%This function is used to solve Q1.

function Q1()
    X = load("hw2x.dat");
    Y = load("hw2y.dat");

    clf();

    hold on;
    for lambda=0:1:100
        W = L2Regression(X(1:80,:), Y(1:80), lambda);
        newY = extendInput(X(1:80, :)) * W;
        testY = extendInput(X(81:99, :))*W;
        rootMeanSqrErr = sqrt( (sum((newY-Y(1:80)).^2)/length(Y(1:80))));
        rootMeanSqrErrTest = sqrt( (sum((testY-Y(81:99)).^2)/length(Y(81:99))));
        scatter(lambda, rootMeanSqrErr );
        scatter(lambda, rootMeanSqrErrTest,'ok');
    end
    hold off;

end
