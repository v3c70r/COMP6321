%Implementation of K Nearest Neighbors to predict testX
function res=KNN(X, Y, K, testX)
    testDistances = distances(X, testX);
    [tmp index] = sort(testDistances);
    res = round(mean(Y(index(1:K))));

    %res = round(mean(
    
    %nearestNeighbors = [];
    %for i=1:K
    %    minValue = 999999;
    %    minIndex = 0;
    %    for j=1:size(X)(1)
    %        dis = distance(X(j,:), testX);
    %        if dis < minValue 
    %            minValue = dis;
    %            minIndex = j;
    %        end
    %    end
    %    nearestNeighbors = [nearestNeighbors minIndex];
    %    %Remove the row from X
    %    X = X([1:minIndex-1, minIndex+1:end],:);
    %end
    %Return majority
    %numOnes = 0;
    %numZeros = 0;
    %for i = 1:length(nearestNeighbors)
    %    %nearestNeighbors(i)
    %    if Y(nearestNeighbors(i)) == 0
    %        numZeros = numZeros+1;
    %    else
    %        numOnes = numOnes +1;
    %    end
    %end
    %if numOnes>numZeros
    %    res = 1;
    %else
    %    res = 0;
    %end
end
