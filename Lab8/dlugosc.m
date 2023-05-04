function L=dlugosc(x,y,p,s)

% % %I sposób
% y_new=((diff(y)./diff(x)).^2+1).^0.5;
% L=trapz(x(2:end),y_new);      %metoda trapezów

% %II sposób
% f=@(x)polyval(p,x);
f=@(x)(polyval(polyder(p),x).^2+1).^0.5;
L=quadgk(f,min(x),max(x));

% %III sposób
% f=poly2sym(p);
% f=((diff(f)).^2+1).^0.5;
% L=int(f,min(x),max(x));



