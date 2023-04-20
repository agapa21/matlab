clear variables;
clc;

% syms k;
% 
% %3*x^2+k*x+3;
% 
% delta = k^2-36;
% 
% equ = delta>0;
% sol = solve(equ, 'ReturnConditions', true);
% % disp(sol);
% % disp(sol.conditions);
% subs(sol.conditions, sol.parameters,k)

syms x k

assume(x, 'real');
assume(k, 'real');
equ1=3*x^2+k*x+3==0;
sol1=solve(equ1, 'ReturnConditions', true);
% disp(sol1.conditions);
% disp(sol1.x);

equ2=[sol1.x(1)~=sol1.x(2);...
    sol1.conditions];
sol2=solve(equ2, 'ReturnConditions', true);
% disp(sol2.conditions);
subs(sol2.conditions, sol2.parameters,k);
