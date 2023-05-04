clear variables;
clc;

p=rand(1,11);
p=[1,0,0];
x=linspace(-1,1,20);
y=polyval(p,x);
plot(x,y,'r.','LineWidth', 7);

% net=fitnet(5);
% % view(net);
% net=train(net,x,y);
% y1=sim(net,x);
% Qnet=mean(abs(y-y1));
% hold on;
% plot(x,y1,'bs');

% f=fittype('a*x.^3+b*x.^2+c*x+d+e*sin(f*x)')
% f=fit(x.', y.', f);
% yfit=f(x);
% hold on;
% plot(x,yfit,'bs');

s=spline(x,y);
ys=ppval(s,x);
hold on;
plot(x,ys,'bo', 'LineWidth', 1);

L=dlugosc(x,y,p)
L=dlugoscSpline(s)
