function [J, grad] = costFunctionReg(theta, X, y, lambda)
%COSTFUNCTIONREG Compute cost and gradient for logistic regression with regularization
%   J = COSTFUNCTIONREG(theta, X, y, lambda) computes the cost of using
%   theta as the parameter for regularized logistic regression and the
%   gradient of the cost w.r.t. to the parameters. 

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta.
%               You should set J to the cost.
%               Compute the partial derivatives and set grad to the partial
%               derivatives of the cost w.r.t. each parameter in theta

%In this calculation I am using previously written costfunction and gradient
[J grad] = costFunction (theta ,X,y);
#disp(J);
J = J + lambda * ((theta(2:size(theta)))' * theta(2:size(theta))) / (2*m);
#disp(J);
grad(2:size(grad)) = grad(2:size(grad)) + lambda .* (theta(2:size(theta))) ./ m;



% =============================================================

end
