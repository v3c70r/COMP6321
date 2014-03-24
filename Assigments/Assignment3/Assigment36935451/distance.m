%Compute the distance between two datas
function d=distance(x1, x2)
    d = sum((x1-x2).^2);
end
