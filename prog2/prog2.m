%prog2.m
%Hebb Rule, Pseudo-inverse Rule, and Autoassociative Memories

%Authors:
%Boston Hock, Justin Kilpatrick, Thomas Lavastida
%October 17, 2015

%Black Square <-> 1
%White Square <-> -1

%ZERO = [-1 1 1 1 -1; 1 -1 -1 -1 1; 1 -1 -1 -1 1; 1 -1 -1 -1 1; 1 -1 -1 -1 1; -1 1 1 1 -1];
%ONE = [-1 1 1 -1 -1; -1 -1 1 -1 -1; -1 -1 1 -1 -1; -1 -1 1 -1 -1; -1 -1 1 -1 -1; -1 -1 1 -1 -1];

%Training Data can be found in zero.csv, one.csv, ..., etc.

%DIGITS IS HOLDING CORRECT DATA
digits(:,:,1) = csvread('data/zero.csv');
digits(:,:,2) = csvread('data/one.csv');

numdigits = numel(digits(1,1,:)); %CHANGE THIS, USER SPECIFIED
numrows = numel(digits(:,1,1));
numcols = numel(digits(1,:,1));

p = zeros((numrows*numcols),numdigits);
%p(:,i) returns the i'th input

%Scan column by column
for i = 1:numdigits
    p(:,i) = matrix_to_column(digits(:,:,i));
end

%Use Hebb rule to learn input p
%weight is initially zero

weight_hebb = zeros(numrows*numcols,numrows*numcols,numdigits-1);
weight_pseudo = zeros(numrows*numcols,numrows*numcols,numdigits-1);
for i = 1:numdigits-1
    weight_hebb(:,:,i) = hebb_rule(p(:,1:i+1),p(:,1:i+1));
    weight_pseudo(:,:,i) = pseudoinverse_rule(p(:,1:i+1),p(:,1:i+1));
end

