%Perform a k-Fold Validation on training sample

function kFoldValidation(X, Y, d, k, norm='no')
    if mod(size(X)(1), k) == 0   %Can perform k-fold
        %Seperate X and Y into k groups

        numElem = size(X)(1)/k;
        Xgroups=zeros(numElem, 1, k);
        Ygroups=zeros(numElem, 1, k);

        for i=1:k
            Xgroups(:,:,i) = X((i-1)*numElem + 1:i*numElem,:);
            Ygroups(:,:,i) = Y((i-1)*numElem + 1:i*numElem,:);
        end

        output = ones(d, 3);
        
        %For each degree
        for degree = 1:d
            %For each fold
            averageTestError = 0;
            averageTrainingError=0;
            for i=1:k
                testX = extendInput(Xgroups(:,:,i), degree,norm);
                testY = Ygroups(:,:,i);
                trainX = extendInput(X([1:(i-1)*numElem, i*numElem+1:end],:), degree,norm);
                trainY = Y([1:(i-1)*numElem, i*numElem+1:end],:);
                W = PolyRegress(trainX, trainY, degree);
                averageTestError = J(testX, testY, W, degree) + averageTestError;
                averageTrainingError = J(trainX, trainY, W, degree) + averageTrainingError;
            end
            averageTestError = averageTestError/k;
            averageTrainingError = averageTrainingError/k;
            output(degree, :) = [degree averageTrainingError averageTestError];
        end
        %printmat(output, 'K-Fold Validation', '', 'd TrainingErr TestErr');
        disp('Cross Validation'), disp(output);

        %hold on;
        %output(:,1)
        %scatter(output(:,1), output(:,2));
        %scatter(output(:,1), output(:,3));
        %hold off;
        

    else
        disp('Error');
    end
end
