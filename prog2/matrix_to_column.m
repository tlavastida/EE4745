function [ v ] = matrix_to_column( A )
%matrix_to_column converts a rectangular matrix A to a column vector v.
%   Does a column by column iteration of A to convert A to a single
%   column vector v.  If A is an m by n matrix then v will be a m*n by 1
%   vector.

numrows = numel(A(:,1));
numcols = numel(A(1,:));

v = zeros(numrows*numcols,1);
j = 1;
for i = 1:numcols
    v(j:j+numrows-1) = A(:,i);
    j = j + numrows;
end