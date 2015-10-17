%prog2.m
%Hebb Rule, Pseudo-inverse Rule, and autoassociative memories

%Authors:
%Boston Hock, Justin Kilpatrick, Thomas Lavastida
%October 17, 2015

%Black Square <-> 1
%White Square <-> -1

%ZERO = [-1 1 1 1 -1; 1 -1 -1 -1 1; 1 -1 -1 -1 1; 1 -1 -1 -1 1; 1 -1 -1 -1 1; -1 1 1 1 -1];
%ONE = [-1 1 1 -1 -1; -1 -1 1 -1 -1; -1 -1 1 -1 -1; -1 -1 1 -1 -1; -1 -1 1 -1 -1; -1 -1 1 -1 -1];

%Training Data can be found in zero.csv, one.csv, ..., etc.

digits(:,:,1) = csvread('zero.csv');
digits(:,:,2) = csvread('one.csv');

numdigits = numel(digits(1,1,:));
numrows = numel(digits(:,1,1));
numcols = numel(digits(1,:,1));

p = zeros((numrows*numcols),numdigits);
%p(:,i) returns the i'th input

%Scan column by column
for i = 1:numdigits
    for j = 1:numcols
        for k = 1:numrows
            p(k+(j-1)*numrows,i) = digits(k,j,i);
        end
    end
end

%Use Hebb rule to learn input p
%weight is initially zero
weight = zeros(numrows*numcols,numrows*numcols);

for i = 1:numdigits
    weight = weight + p(:,i)*p(:,i)';
end

weight_2 = hebb_rule(p,p);

weight_3 = pseudoinverse_rule(p,p);

