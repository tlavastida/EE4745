function [ out ] = sym_hard_lim( in )
%sym_hard_lim, a quick symetric hard limit function

%Authors:
%Boston Hock, Justin Kilpatrick, Thomas Lavastida
%October 17, 2015

if(in > 0)
    out = 1;
else
    out = 0;

end

