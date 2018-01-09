clear all;close all;clc

x = -10:0.1:10;
y = exp(x)-tan(x);
plot(x,y);
axis([-4 -2 -2 2]);
hold on;

xl = -4;
xr = -2.5;

for j = 1:1000
    xc = (xl+xr)/2;
    fc = exp(xc)-tan(xc);
    plot(xc, fc, 'ro', 'Linewidth', [2]);
    pause(0.5)
    
    if  fc < 0
        xr = xc;
    else 
        xl = xc;
    end
    
    if abs(fc) < 10^-5
        break;
    end
    
end

xc
j

