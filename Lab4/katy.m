function [a,b,c]=katy(x,y,z)

a=acosd((-x.^2+y.^2+z.^2)./(2*z.*y));
b=acosd((-y.^2+z.^2+x.^2)./(2*x.*z));
c=acosd((-z.^2+x.^2+y.^2)./(2*x.*y));

end