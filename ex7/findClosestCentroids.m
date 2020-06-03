function idx = findClosestCentroids(X, centroids)
%FINDCLOSESTCENTROIDS computes the centroid memberships for every example
%   idx = FINDCLOSESTCENTROIDS (X, centroids) returns the closest centroids
%   in idx for a dataset X where each row is a single example. idx = m x 1 
%   vector of centroid assignments (i.e. each entry in range [1..K])
%

% Set K
[K P]= size(centroids);

% You need to return the following variables correctly.
idx = zeros(size(X,1), 1);
  k = zeros(K,1);
% ====================== YOUR CODE HERE ======================
% Instructions: Go over every example, find its closest centroid, and store
%               the index inside idx at the appropriate location.
%               Concretely, idx(i) should contain the index of the centroid
%               closest to example i. Hence, it should be a value in the 
%               range 1..K
%
% Note: You can use a for-loop over the examples to compute this.
%

for i = 1:size(X,1) 
    idx(i) = 1;
    for j = 1:K
        a = 0;
        for p = 1:P
            a = a + (X(i,p)-centroids(j,p))^2;
        end
        k(j) = sqrt(a);
        %k(j) = sqrt((X(i,1)-centroids(j,1))^2+(X(i,2)-centroids(j,2))^2);
        if j > 1 && k(j) <= k(idx(i))
            idx(i) = j;
        end
    end
end    






% =============================================================

end

