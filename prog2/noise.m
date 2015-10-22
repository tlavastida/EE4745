function [ out ] = noise( mat, num)
%noise adds noise to matrix  

columns = numel(mat(:,1));
rows = numel(mat(1,:));

for i = 1:num
    x = randi([1, columns]);
    y = randi([1, rows]);
    
    if(mat(x,y) == 1)
        mat(x,y) = -1;
    else
        mat(x,y) = 1;
    end
end

out = mat;
end

