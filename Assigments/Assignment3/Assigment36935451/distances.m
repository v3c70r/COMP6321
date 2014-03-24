function res=distances(X, testdata)
    res = zeros(size(X,1),1);
    for i = 1:size(res,1)
        res(i) = distance(X(i,:), testdata);
    end
end
