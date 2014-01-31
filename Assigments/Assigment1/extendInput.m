%Extend input X to required order d
function extended = extendInput(X, d, norm='no')

    extended = [ones(length(X),1), X];  %Add ones and begining
    for n=2:d
        extended=[extended,extended(:,2).^n];   %extend according to degree
    end

    if strcmpi(norm, 'yes')==1
        extended = Normalize(extended);
    end
    
end
