function p = predict(Theta1, Theta2, X)
%PREDICT Predict the label of an input given a trained neural network
%   p = PREDICT(Theta1, Theta2, X) outputs the predicted label of X given the
%   trained weights of a neural network (Theta1, Theta2)

% Useful values
m = size(X, 1);
num_labels = size(Theta2, 1);

% You need to return the following variables correctly 
p = zeros(size(X, 1), 1);


% ====================== YOUR CODE HERE ======================
% Instructions: Complete the following code to make predictions using
%               your learned neural network. You should set p to a 
%               vector containing labels between 1 to num_labels.
%
% Hint: The max function might come in useful. In particular, the max
%       function can also return the index of the max element, for more
%       information see 'help max'. If your examples are in rows, then, you
%       can use max(A, [], 2) to obtain the max for each row.
%



% ====================== hardcoded for two layer ======================
%Layer 0 Input-Layer
%a_1 = [ones(m, 1) X];

%Layer 1 HiddenLayer
%z_2 = a_1 *Theta1';
%a_2 = sigmoid(z_2);

%Layer 2 Output-Layer
%a_2 = [ones(m, 1) a_2];
%z_3 = a_2 * Theta2';
%h_0 = sigmoid(z_3); 

%[ele, idx] = max(h_0, [], 2);
%p = idx; 



% ====================== with for loop for any number of layers ========
%count of Layer
layer = 2;

%create a cell array, its a array of arrays with diffrent length
all_thetas =cell(layer,1);

%copy theta values into the cell-array the index should corespont to the 
%layer
all_thetas(1,1) = Theta1;
all_thetas(2,1) = Theta2;

% the input feature values are the activation values X = a_0
a_x = X;

for i= 1:layer
  a_x = [ones(m, 1) a_x];
  a_x = sigmoid(a_x * cell2mat(all_thetas(i,1))');
endfor

[ele, idx] = max(a_x, [], 2);
p = idx; 


% =========================================================================


end
