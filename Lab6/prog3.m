clear variables;
clc;

syms x k;

% assume(x, 'real');
% assume(m, 'real');
equ1=(k^2+5*k+3)*x^2+(3*k-1)*x+2==0;
sol1=solve(equ1, 'ReturnConditions', true);
% disp(sol1.conditions);
% disp(sol1.x);

equ2=[0.5*sol1.x(1)==sol1.x(2);...
    sol1.conditions];

sol2=solve(equ2, 'ReturnConditions', true);
disp(sol2.k);
disp(sol2.conditions);
