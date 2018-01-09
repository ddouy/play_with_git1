clear all;close all;clc

x1 = -10:0.1:10;
y1 = sin(x1);

x2 = [-5 sqrt(3) pi 4];
y2 = sin(x2);

x3 = linspace(-10, 10, 64);
y3 = x3.*sin(x3);

a = 10;

% subplot(2,1,1);s
plot(x1, y1, 'Linewidth', [2]), hold on;
plot(x2, y2, 'co', 'Linewidth', [3]);
plot(x3, y3, 'm:d', 'Linewidth', [2]);

% plot(x1, y1, x2, y2, 'g*', x3, y3, 'yd:', 'Linewidth', [3])

grid on;
% axis off;

xlabel('x values','fontsize',[15]);
ylabel('y','fontsize',[15]);
title(['First graph \alpha = ' num2str(a)],'fontsize',[15]);
text(1,5,'stuff \pi');

set(gca,'fontsize',[15]);

legend({},'location','eastoutside','fontsize',[15]);

% subplot(2,2,3);
% plot(x1, y1, x2, y2, 'g*', x3, y3, 'yd:', 'Linewidth', [3]);
% grid on;

%% exporting and importing

for j = 1:5
    save(['loopnumber', num2str(j)]);
end


