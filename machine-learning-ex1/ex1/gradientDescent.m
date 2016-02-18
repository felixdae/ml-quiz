function [theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters)
%GRADIENTDESCENT Performs gradient descent to learn theta
%   theta = GRADIENTDESENT(X, y, theta, alpha, num_iters) updates theta by 
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
m = length(y); % number of training examples
J_history = zeros(num_iters, 1);

% y
% X
% quit
for iter = 1:num_iters

    % ====================== YOUR CODE HERE ======================
    % Instructions: Perform a single gradient step on the parameter vector
    %               theta. 
    %
    % Hint: While debugging, it can be useful to print out the values
    %       of the cost function (computeCost) and gradient here.
    %
% 
%     pt1 = 0;
%     pt2 = 0;
%     for i = 1:m
%         pt1 += (X(i,:)*theta-y(i,1))*X(i,1);
%         pt2 += (X(i,:)*theta-y(i,1))*X(i,2);
%         th1 = theta(1,1) - alpha/m*pt1;
%         th2 = theta(2,1) - alpha/m*pt2;
% 
%         theta = [th1, th2]';
%     end



    % ============================================================

    % Save the cost J in every iteration    
    theta = theta - alpha / m * (X' * (X*theta - y));
    J_history(iter) = computeCost(X, y, theta);
    % theta
    % sum(X,1)'
    % if isnan(theta(2,1))
    %     quit
    % end
    % if isnan(theta(1,1))
    %     quit
    % end

end

end
