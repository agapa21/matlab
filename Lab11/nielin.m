function [c,ceq]=nielin(x)

ceq=[];

if x(1)>0
    c=-x(1)+x(2);
else
    c=x(1)+x(2);
end