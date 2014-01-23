%Main function for question 1
function Q1()

    %(a) Load training set

    X = load("hw1x.dat");
    Y = load("hw1y.dat");

    %Append 1s to X
    extendX = [ones(length(X), 1), X];

    %get weight from linear regeression
    W = LinearRegression(extendX, Y);

    %Plot points and regression result
    clf;
    scatter(X,Y);
    hold on;
    range = (min(X):0.01:max(X))';;

    testMatrix = [ones(length(range), 1), range];

    res = testMatrix * W;
    %plot(range, res);

    err =  J(extendX, Y, W);

    fprintf("Error is %f\n", err);

    %(e) Quadratic regression
    degree = 2;
    W = PolyRegress(extendX, Y, degree);

    testMatrix = [ones(length(range), 1), range];   %Add ones

    for d=2:degree
        testMatrix = [testMatrix, testMatrix(:,2).^d];
    end

    hold on
    res = testMatrix*W;

    %plot(range, res);

    %(f) cubic regression
    degree = 3;
    W = PolyRegress(extendX, Y, degree);

    testMatrix = [ones(length(range), 1), range];   %Add ones

    for d=2:degree
        testMatrix = [testMatrix, testMatrix(:,2).^d];
    end

    hold on
    res = testMatrix*W;
    plot(range, res);


end
