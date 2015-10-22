function [ output ] = embiggen(input, scale_factor)
%embiggen increases the size of a matrix for display

columns = numel(input(:,1));
rows = numel(input(1,:));

output_columns = scale_factor * columns;
output_rows = scale_factor * rows;

output = zeros(output_rows, output_rows);

for i = 1:output_columns
    for j = 1:output_rows
        map_r = int32(j/scale_factor);
        map_c = int32(i/scale_factor);
        if(input(map_r,map_c) == 1)
            output(j, i) = 1;
        else
            output(j, i) = -1;
        end
    end
end

end

