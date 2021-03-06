function K = kerDot(X1, X2)
%
% Dot product kernel. 
% X1 = d x n1 matrix 
% X2 = d x n2 matrix
% Return K which is a n1 x n2 matrix.
%
% - d is the dimension. 
% - Each instance is a column vector. 
% - X1 and X2 can be just column vectors. 
%
K = X1'*X2;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%
end