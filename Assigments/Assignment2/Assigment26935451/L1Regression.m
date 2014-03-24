function W = L1Regression(X, Y, lambda)
   H = X'*X;
   f = -(Y'*X)';
   A = [ 1 1 1;
    1 1 -1;
    1 -1 1;
    -1 1 1;
    1 -1 -1;
    -1 1 -1;
    -1 -1 1;
    -1 -1 -1];
    w0 = X/y;

    W = qp(w0, H, f, A, b, -lambda*ones(8,1), lambda*ones(8,1));
end
