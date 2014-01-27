%This function is used to plot training data and trained function in a graph
%and save it to fileName, which should be an eps file

function PlotNSave(X, Y, W, d, fileName)

    range = (min(X):0.01:max(X))';
    testMatrix = [ones(length(range), 1), range];
    for d=2:d
        testMatrix = [testMatrix, testMatrix(:,2).^d];
    end

    clf();
    hold on;
    scatter(X,Y);
    plot(range, testMatrix*W);
    print(fileName, "-depsc")
    hold off;
    



    
end
