%This function returens error rate.
function rate=errorRate(X, Y, K, testX, testY)
   numErrors=0;
   for i=1:length(testY)
       if KNN(X,Y,K, testX(i,:)) ~= testY(i)
           numErrors = numErrors+1;
       end
   end
   rate = numErrors*1.0/length(testY);
end
