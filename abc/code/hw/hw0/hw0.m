clear all;close all;clc

x= 10;
y = -2;
z = pi;

save('A1.dat','z','-ascii');

a2 = x + y - z;

save('A2.dat','a2','-ascii');

a3 = x^3;

save('A3.dat','a3','-ascii');

a4 = exp(-y);

save('A4.dat','a4','-ascii');

a5 = cos(z*y);

save('A5.dat','a5','-ascii');

%% problem 2
clear all;close all;clc

A = [-1 2 1;3 1 -1];
x = [1;2;-1];
y = [-2;0;1];

save('A6.dat','x','-ascii');

a = A(2,:);
save('A7.dat','a','-ascii');

a = x - y;
save('A8.dat','a','-ascii');

a = A * y;
save('A9.dat','a','-ascii');

a = A * (x + y);
save('A10.dat','a','-ascii');


