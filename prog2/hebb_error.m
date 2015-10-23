function [ err ] = hebb_error( targets, weights, inputs)
%percent error, outputs error for a given weight matrix and expected values

%Authors:
%Boston Hock, Justin Kilpatrick, Thomas Lavastida
%October 17, 2015

output = weights * inputs; 

%right now this outputs an error matrix, what it needs to do is output
%percent error based on whats different from the output to the targets
err = ~isequal(targets, hardlims(output));
end

