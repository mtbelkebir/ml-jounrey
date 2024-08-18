function [theta, J_history] = gradientDescentMulti(X, y, theta, alpha, num_iters)
%GRADIENTDESCENTMULTI Performs gradient descent to learn theta
%   theta = GRADIENTDESCENTMULTI(x, y, theta, alpha, num_iters) updates theta by
%   taking num_iters gradient steps with learning rate alpha


m = length(y);
J_history = zeros(num_iters, 1);

for iter = 1:num_iters

    h = X * theta;
    gradient = (1/m) * (X' * (h - y));
    theta = theta - alpha * gradient;
    J_history(iter) = computeCostMulti(X, y, theta);

end

end
