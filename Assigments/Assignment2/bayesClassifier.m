%return the probability of bayes classifier
function res = bayesClassifier(pi, miu0, miu1, sigma, data)
    size(miu1)
    res = 1/(1 + exp(-(miu1-miu0)'*(data'-(miu1+miu0)./2)+log((1-pi)/pi)));
end
