function [X_norm, mu, sigma] = featureNormalize(X)
%FEATURENORMALIZE Normalizes the features in X
%   FEATURENORMALIZE(X) returns a normalized version of X where
%   the mean value of each feature is 0 and the standard deviation
%   is 1.
X_norm = X;
mu = zeros(1, size(X, 2));
sigma = zeros(1, size(X, 2));
mu = mean(X_norm, 1);
sigma = std(X_norm, 1);
[~, y] = size(X_norm);

for i = 1:y
  X_norm(:, i) = (X_norm(:,i) - mu(i)) / sigma(i);
endfor

end
