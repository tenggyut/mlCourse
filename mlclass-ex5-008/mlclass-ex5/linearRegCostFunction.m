function [J, grad] = linearRegCostFunction(X, y, theta, lambda)
%LINEARREGCOSTFUNCTION Compute cost and gradient for regularized linear 
%regression with multiple variables
%   [J, grad] = LINEARREGCOSTFUNCTION(X, y, theta, lambda) computes the 
%   cost of using theta as the parameter for linear regression to fit the 
%   data points in X and y. Returns the cost in J and the gradient in grad

% Initialize some useful values
m = length(y); % number of training examples
theta_temp = theta;
theta_temp(1) = 0;
% You need to return the following variables correctly 
J = (X*theta-y)' * (X*theta-y) / (2 * m) ...
	+ lambda * sum(theta_temp .^2) / (2 * m);
grad = (X' * (X*theta-y)) / m + (lambda / m ) * theta_temp;

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost and gradient of regularized linear 
%               regression for a particular choice of theta.
%
%               You should set J to the cost and grad to the gradient.
%












% =========================================================================

grad = grad(:);

end
