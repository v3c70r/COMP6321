%Normalize a matrix by the largest value in each column
function output=Normalize(X)

    output = X(:,:);
    for i=1:size(X)(2);
        maxVal = max(abs(X(:,i)));
        output(:,i) = X(:,i)./maxVal;
    end

end
