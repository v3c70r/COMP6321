function picMat = kMeans(k, pic, initCentroid)
    %cluster
    for iter = 1:50  
        cluster = zeros(size(pic, 1), 1);
        clusterNum = zeros(size(initCentroid,1), 1);    %Track number of elements in this cluster
        squareDistSum = zeros(size(initCentroid,1),1);
        emptyCluster = [];

        for i = 1:size(pic, 1)          %For each pixel
            %Init minDist and minIndx with first centroid
            minDist = (pic(i,1) - initCentroid(1,1))^2 + (pic(i,2) - initCentroid(1,2))^2 + (pic(i,3) - initCentroid(1,3))^2;
            minIndx = 1;
            for j = 1:size(initCentroid, 1)     %For each centeroid
                dist = (pic(i,1) - initCentroid(j,1))^2+(pic(i,2) - initCentroid(j,2))^2+(pic(i,3) - initCentroid(j,3))^2;
                squareDistSum(j) += dist;
                if (dist < minDist)
                    minDist = dist;
                    minIndx = j;
                end
            end
            cluster(i) = minIndx;
        end

        %update new centeroid
        newCenteroid = zeros(size(initCentroid));
        for i = 1:size(pic, 1)
            newCenteroid( cluster(i), :) += pic(i,:);
            clusterNum(cluster(i)) += 1;
        end
        
        for i = 1:size(newCenteroid,1)
            if (clusterNum(i) == 0)
                %cluster i is empty, remain the same
                newCenteroid(i,:) = initCentroid(i,:);
                emptyCluster = [emptyCluster i];
            else
                newCenteroid(i,:) /= clusterNum(i);
            end
        end

        newCenteroid(emptyCluster, :) = [];
        clusterNum(emptyCluster, :) = [];
        squareDistSum(emptyCluster, :) = [];


        if (size(newCenteroid) == size(initCentroid))
            fprintf('Iteration %d has error of %f\n', iter,norm(newCenteroid-initCentroid) );
            if (norm(newCenteroid-initCentroid) < 0.01) 
                iter
                break;
            end
        end


        %if (size(newCenteroid) == size(initCentroid) && (newCenteroid - initCentroid) )
        %    break;
        %end
        disp('Squared dist to centeroids');
        disp(squareDistSum);

        initCentroid = newCenteroid;
   end 

   %output results
   fprintf('%d Clusters are left in the end\n', size(initCentroid, 1));
   disp('Final centeroids are:');
   disp(initCentroid);
   picMat = zeros(size(pic));
   disp('#pixels asscociate to each cluster')
   disp(clusterNum);

   for i = 1:size(pic,1)
       picMat(i,:) = initCentroid( cluster(i), :);
   end

end

