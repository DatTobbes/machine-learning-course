function g = sigmoid(z)
%SIGMOID Compute sigmoid function
%   g = SIGMOID(z) computes the sigmoid of z.

% You need to return the following variables correctly 
g = zeros(size(z));
g_neu = zeros(size(z));
% ====================== YOUR CODE HERE ======================
% Instructions: Compute the sigmoid of each value of z (z can be a matrix,
%               vector or scalar).


#first try with for loops
rows = size(z)(1);
cols = size(z)(2);

#for i=1:rows
#   for j=1:cols
#     g_neu(i,j) = 1 / (1 + e^(-z(i,j)));
#   endfor
#‚endfor


#optimized with .-Operator for elementwise operations
g = 1 ./ (1 .+ e.^(-z));

% =============================================================

end
