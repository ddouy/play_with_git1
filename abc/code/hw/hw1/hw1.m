%% problem 1
clear all;close all;clc

A = [1 2; -3 1];
B = [5 3; -1 3];
C = [1 2 3; -9 2 4];
D = [1 -2; -1 3; 2 3];
x = [-2; 0];
y = [0; 3];
z = [2; -3; 1];

% a
a = B - A;
save('A1.dat','a','-ascii');

% b
b = x * -2 + y * 4;
save('A2.dat','b','-ascii');

% c
c = B * x;
save('A3.dat','c','-ascii');

% d
d = A * (x - y);
save('A4.dat','d','-ascii');

% e
e = C * z;
save('A5.dat','e','-ascii');

% f
f = A * B;
save('A6.dat','f','-ascii');

% g
g = B * A;
save('A7.dat','g','-ascii');

% h
h = A * C;
save('A8.dat','h','-ascii');

% i
i = C * D;
save('A9.dat','i','-ascii');

% j
j = D(1:2,:);
save('A10.dat','j','-ascii');

% k 
k = C(:,2);
save('A11.dat','k','-ascii');

% l
l = C(1,end - 1:end);
save('A12.dat','l','-ascii');


% deep thinking: 
% f ang g are different because matrix multiplication doesn't
% have communicative law.
% C * A and x + z will throw exception because matrix dimensions don't
% agree. D * C works, which result is a 3 * 3 matrix

%% problem 2
clear all;close all;clc

x = 0;
for j = 1:800000
    x = x + 0.1;
end
x1 = abs(80000 - x);
save('A13.dat','x1','-ascii');

x = 0;
for j = 1:640000
    x = x + 0.125;
end
x2 = abs(80000 - x);
save('A14.dat','x2','-ascii');

x = 0;
for j = 1:400000
    x = x + 0.2;
end
x3 = abs(80000 - x);
save('A15.dat','x3','-ascii');

x = 0;
for j = 1:320000
    x = x + 0.25;
end
x4 = abs(80000 - x);
save('A16.dat','x4','-ascii');


% deep thinking:
% in matlab 2 to the power is stored as the exactly value as in real world,
% for other number, there are some little difference from real world and
% matlab. 0.125 = 2^-3 and 0.25 = 2^-2
%% problem 3
clear all;close all;clc

p(1) = 10;
for j = 2:100
    p(j) = 3 * p(j - 1) * (1 - p(j - 1) / 20);
end
p(5)/10^234;
a = p(100);
x = 1:100
plot(x, p); hold on;
p(1) = 10;
for j = 2:100
    p(j) = 3 * p(j - 1) * (1 - p(j - 1) / 20);
end
plot(x, p, 'k');
%axis([-100 100 -100 100]);
save('A17.dat','a','-ascii');

n(1) = 10;
n(3) = 100;
n
% n(2) is 0 although I don't assign a value

% deep thinking:
% I can store it in a vector, which is shown in the solution. 
% 1. when I change P(1) value(0 < P(1) < 20), they may have some difference in
% value, but they are going to the same value and have the same pattern
% 2. when I change r to a value which is less than 3, the amplitude of
% graph is much smaller than r = 3. If it is larger than 3, the amplitude of
% graph is much larger than r =3. 
% 3. when I change k to become larger, the value of each point becomes
% larger, and when I change k to become smaller, the value of each point
% becomes smaller
% For these three parameter, r is very sensitive. The other two are not
% sensitive at all