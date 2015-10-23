function [ A ] = column_to_matrix( V , num_col)
%column_to_matrix converts a column vector v to a rectangular matrix A.

num_row = idivide(int32(numel(V(:,1))), int32(num_col));

A = zeros(num_row, num_col);

%our iterator as we walk down the column vector
iter = 1;

for j = 1:num_col
    for i = 1:num_row
        A(i,j) = V(iter, 1);
        iter = iter + 1;
    end
end
end