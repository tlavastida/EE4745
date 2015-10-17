function [ weights ] = hebb_rule( targets, inputs )
%hebb_rule - Supervised Hebbian Learning
%   Outputs a weight matrix according to Hebb 
%   rule given the set of training data in 
%   the targets and inputs parameters.

%Authors:
%Boston Hock, Justin Kilpatrick, Thomas Lavastida
%October 17, 2015

%targets - matrix containing each target as a column vector
%inputs - matrix containing each target as a row vector

%the number of columns in each parameter must match
if ( numel(targets(1,:)) ~= numel(inputs(1,:)) )
    error('hebb_rule: targets must have same number of columns as inputs');
end

%W = T*P^t
weights = targets*(inputs');

end

