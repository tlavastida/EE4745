function [ output ] = embiggen(input, scale_factor)
%embiggen increases the size of a matrix for display

columns = numel(input(:,1));
rows = numel(input(1,:));

output_columns = scale_factor * columns;
output_rows = scale_factor * rows;

output = zeros(output_rows, output_rows);

for i = 1:output_columns
    for j = 1:output_rows
        map_r = (idivide(int32(j), int32(scale_factor), 'ceil'));
        map_c = (idivide(int32(i), int32(scale_factor), 'ceil'));
        %protection case for matricies that are not square. 
        if(map_r <= rows && map_c <= columns)         
            if(input(map_c, map_r) == 1)
                output(j, i) = 1;
            else
                output(j, i) = -1;
            end
        end
    end
end
output = output';
end

