clear variables;
close all;
clc;

a=[-0.1;1];
[x,y]=fminsearch(@(x)f_celu(x,a),[0;0]);

A=[1,1;...
    -1,1;...
    -1,-1;...
    1,-1];

b=[2;...
    2;...
    2;...
    2];

Aeq=[];
beq=[];

[x,y]=fmincon(@(x)f_celu(x,a),[0;0],A,b,Aeq,beq,[],[],@nielin)