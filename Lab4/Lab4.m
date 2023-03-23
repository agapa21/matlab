clear variables;
close all;
clc;

% funkcja=@(x)x.^2+x*2-1;
% 
% d='3*x';
% x=5;
% eval(d);
% 
% funkcja(-9);
% funkcja([77,9]);
% 
% x=-30:5:30;
% y=funkcja(x);

x=-10:1:10;
% y=param(x,3);
p=@(x)param(x,55);
y=p(x);
plot(x,y);

