clear variables;
clc;

syms x m;

assume(x, 'real');
assume(m, 'real');
equ1=2*x^2-(m-1)*x+m+1;
sol1=solve(equ1, 'ReturnConditions', true);
% disp(sol1.conditions);
% disp(sol1.x);

equ2=[abs(sol1.x(2)-sol1.x(1))==1;...
    sol1.conditions];
  
sol2=solve(equ2, 'ReturnConditions', true);
% disp(sol2.m);
% disp(sol2.conditions);

for i=1:2
    equ3=subs(equ1,m,sol2.m(i))
    solve(equ3)
end