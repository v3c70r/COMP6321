%This is a Baye's Classifier with single parameter
function [pi, miu0, miu1, sigma] = singleBayes(X, Y)
    numExamples = length(X);
    numClass1 = 0;
    numClass0 = 0;
    sumXClass1 = zeros(size(X)(2),1);
    sumXClass0 = zeros(size(X)(2),1);
    sigma = eye(size(X)(2));

    for i = 1:length(X)
        if (Y(i) == 1)
            numClass1++;
            sumXClass1 = sumXClass1+X(i);
        else
            numClass0++;
            sumXClass0 = sumXClass0+X(i);
        endif
    end

    miu0 = sumXClass0./numClass0;
    miu1 = sumXClass1./numClass1;
    pi = numClass1/numExamples;
    
end
