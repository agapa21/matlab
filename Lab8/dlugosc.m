function L=dlugosc(x,y,p,s)

% % %I spos�b
% y_new=((diff(y)./diff(x)).^2+1).^0.5;
% L=trapz(x(2:end),y_new);      %metoda trapez�w

% %II spos�b
% f=@(x)polyval(p,x);
f=@(x)(polyval(polyder(p),x).^2+1).^0.5;
L=quadgk(f,min(x),max(x));

% %III spos�b
% f=poly2sym(p);
% f=((diff(f)).^2+1).^0.5;
% L=int(f,min(x),max(x));



