clear all;close all;clc;

x = zeros(1,5);
for i = [2,4,3,1,6]
    x(i) = i;
end

A = zeros(3,3);
% i is the row number
for i = 1:3
    % j is the column number
    for j = 1:3
        A(i,j) = 3 * (i - 1) + j;
    end  
end

A