function [ output ] = embiggen(input, scale_factor)
%embiggen increases the size of a matrix for display

columns = numel(input(:,1));
rows = numel(input(1,:));

output_columns = scale_factor * columns;
output_rows = scale_factor * rows;

output = zeros(output_rows, output_rows);

for i = 1:output_columns
    for j = 1:output_rows
<<<<<<< HEAD
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
=======
        map_r = int32(j/scale_factor);
        map_c = int32(i/scale_factor);
        if(input(map_r,map_c) == 1)
            output(j, i) = 1;
        else
            output(j, i) = -1;
        end
    end
end

>>>>>>> 8058ac1b78fef37c0e8c41d33baba9fc4fb500c7
end

