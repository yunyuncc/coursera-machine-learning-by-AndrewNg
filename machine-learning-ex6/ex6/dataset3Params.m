function [C, sigma] = dataset3Params(X, y, Xval, yval)
  fprintf('---------------------------------');
%DATASET3PARAMS returns your choice of C and sigma for Part 3 of the exercise
%where you select the optimal (C, sigma) learning parameters to use for SVM
%with RBF kernel
%   [C, sigma] = DATASET3PARAMS(X, y, Xval, yval) returns your choice of C and 
%   sigma. You should complete this function to return the optimal C and 
%   sigma based on a cross-validation set.
%
 Cs = [0.01; 0.03; 0.1; 0.3; 1; 3; 10; 30];
 sigmas = [0.01; 0.03; 0.1; 0.3; 1; 3; 10; 30];
 k = size(Cs,1);
% You need to return the following variables correctly.
C = 1;
sigma = 0.3;
%predicts = zeros(k*k, size(yval, 1));
errors = zeros(k*k);
min_err = 100000;

for i = 1:k
  for j = 1:k
    C_ = Cs(i);
    sigma_ = sigmas(j);
    model= svmTrain(X, y, C_, @(x1, x2) gaussianKernel(x1, x2, sigma_));
    predicts = svmPredict(model, Xval);
    error = mean(double(predicts ~= yval));
    if error < min_err
      sigma = sigma_;
      C = C_;
      min_err = error;
    endif
  endfor
endfor
% ====================== YOUR CODE HERE ======================
% Instructions: Fill in this function to return the optimal C and sigma
%               learning parameters found using the cross validation set.
%               You can use svmPredict to predict the labels on the cross
%               validation set. For example, 
%                   predictions = svmPredict(model, Xval);
%               will return the predictions on the cross validation set.
%
%  Note: You can compute the prediction error using 
%        mean(double(predictions ~= yval))
%







% =========================================================================

end
