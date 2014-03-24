%Get minimum by Newton-Raphson method by given training example X, Y and number of iterations
function W=NewtonRaphson(X, Y, Winit,iter)
    
    %init phi
    W = Winit;
    Phi = X;

    R = eye(length(X));

    for i=1:iter
        for j = 1:length(X)
            R(j, j) = sigmoid(X(j,:)*W)*(1-sigmoid(X(j,:)*W));
        end
        W = pinv(Phi'*R*Phi)*Phi'*R*(Phi*W - pinv(R)*(sigmoid(Phi*W)-Y));
        J(X, Y, W)
    end
end
