function [J, grad] = costFunctionReg(theta, X, y, lambda)
%COSTFUNCTIONREG Compute cost and gradient for logistic regression with regularization
%   J = COSTFUNCTIONREG(theta, X, y, lambda) computes the cost of using
%   theta as the parameter for regularized logistic regression and the
%   gradient of the cost w.r.t. to the parameters. 

% Initialize some useful values
m = length(y); % number of training examples
% You need to return the following variables correctly 
theta_temp = theta;
theta_temp(1) = 0;
%for i = 1:m
%  J = J + [y 1 - y](i,:) * [log(sigmoid(X * theta)) log(1 - sigmoid(X * theta))]'(:,i);
%end
J = sum(([y 1 - y] .* [log(sigmoid(X * theta)) log(1 - sigmoid(X * theta))])(:)) / -m + lambda * sum(theta_temp .^2) / (2 * m);
%J = J / -m;

%J = J / -m + lambda * sum(theta_temp .^2) / (2 * m);
grad = (X' * (sigmoid(X * theta)-y)) / m + (lambda / m ) * theta_temp;

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta.
%               You should set J to the cost.
%               Compute the partial derivatives and set grad to the partial
%               derivatives of the cost w.r.t. each parameter in theta






% =============================================================

end
