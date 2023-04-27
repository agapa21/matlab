clear variables;
clc;
close all;

% x=-2:0.1:2;
% y=1./(1-x);
% h=plot(x,y,'Color', [0,0,0.5],'LineWidth', 3);
% set(h, 'LineStyle', '--');

% x=-2:0.5:2;
% y=x.^2;
% h=bar(x,y);

% p=[1,0,-1,0];
% x=-2:0.1:2;
% y=polyval(p,x);
% h=plot(x,y,'Color', [1,0,0.5],'LineWidth', 3);
% 
% x0=roots(p);
% get(gca, 'NextPlot');
% hold on;
% plot(x0,0,'b*', 'MarkerSize',15, 'LineWidth', 1)
% dp=polyder(p);
% dx0=roots(dp);                                            %!! rysowanie dwukolorowego wykresu (trzeba zrobiæ dwa wykresy)
% plot(dx0, polyval(p,dx0),'go', 'MarkerSize', 15, 'LineWidth', 1)

p=[1,0,0];
x=-1:0.1:1;
y=polyval(p,x);
for i=1:length(x)
    plot(x(i),y(i),'s', 'MarkerSize', 10+10*y(i));
    hold on;
end






