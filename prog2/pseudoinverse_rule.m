function [ weights ] = pseudoinverse_rule( targets, inputs )
%pseudoinverse_rule - Modified Supervised Hebbian Learning
%   Outputs a weight matrix according to the
%   pseudo-inverse rule given the set of training
%   data in the targets and inputs parameters

%Authors:
%Boston Hock, Justin Kilpatrick, Thomas Lavastida
%October 17, 2015

%targets - matrix containing each target as a column vector
%inputs - matrix containing each target as a row vector

%the number of columns in each parameter must match
if( numel(targets(1,:)) ~= numel(inputs(1,:)) )
    error('pseudoinverse_rule: targets must have same number of columns as inputs');
end

%W = TP+ = T*[ (P^t*P)^-1*P^t ]
weights = targets*( (inputs'*inputs)\inputs' );
%note that inv(A)*b == A\b in MATLAB

end

