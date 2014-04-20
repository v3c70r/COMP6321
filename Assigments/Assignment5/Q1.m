function Q1
    MU = [5 20];
    SIGMA = [10 2; 2 5];
    data = zeros(200,2);
    for i = 1:size(data,1)
        data(i,:) = mvnrnd(MU, SIGMA);
    end
    sub = bsxfun(@minus, data, MU);     %Subtract the mean
    [pc,score,latent,tsquare] = princomp(sub);
    clf();
    hold on;
    plot(pc);
    scatter(sub(:,1), sub(:,2));
    hold off;
end

