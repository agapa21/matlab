clear variables;
close all;
clc;

f=@(x)x(1).^2+x(2).^2; %zawsze funkcja jednej zmiennej!!!

x0=10*rand(2,1)-5;

[x_opt,y_opt,ef,output]=fminsearch(f,x0);

g=@(x)[2*x(1); 
    2*x(2)];

options = optimset('GradObj', 'on');

[x_opt,y_opt,ef,output]=fminunc({f,g},x0,options)


