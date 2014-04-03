function picMat = kMeans(k, pic, initCentroid)

    clusters = zeros(size(pic, 1), 1); %cluster tracker
    centroid = initCentroid;
    %for i = 1:10
    %1 Cluster
        clusterSize = zeros(size(initCentroid, 1), 1);
        for j=1:size(pic, 1)
            minDist = (pic(j,:) - centroid(1,:))*(pic(j,:) - centroid(1,:))';
            minIndx = 1;
            for k=2:size(initCentroid, 1)
                distance = (pic(j,:) - centroid(k,:))*(pic(j,:) - centroid(k,:))';
                if ( distance < minDist)
                    minDist = distance;
                    minIndx = k;
                end
            end
            if (minIndx == 0)
                minIndx
            end
            cluster(j) = minIndx;
            clusterSize(minIndx) = clusterSize(minIndx) + 1;
        end
    %2 update centeroid
        newCenteroid = zeros(size(centroid));
        
        for j = 1:size(clusters)
            clusters(j)
            newCenteroid(clusters(j)) =  newCenteroid(clusters(j)) + pic(j, :);
        end
        for j = 1:size(newCenteroid,1)
            if (clusterSize(j) != 0)
                newCenteroid(j) = newCenteroid(j) / clusterSize(j);
            end
        end
        centroid = newCenteroid;
    %end
end

