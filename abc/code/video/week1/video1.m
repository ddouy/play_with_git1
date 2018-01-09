clear all;close all;clc
x = [1
    2
    3];
x = 1:2:10;
x = 0:0.2:1;
A = [1 3 2;5 6 7;8 3 1];
x = A(2,:);
%%
clear all;close all;clc
B = [1 7 9 2;2 3 3 4;5 0 2 6;6 1 5 5]
y = B(2:3, 2);
y = B(4, 2:4);
z = B(1:3, 2:end)