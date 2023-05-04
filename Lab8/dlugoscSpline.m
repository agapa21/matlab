function L=dlugoscSpline(s)

L=0;

for i=1:s.pieces
    f=@(x)(polyval(polyder(s.coefs(i,:)),x).^2+1).^0.5;
    L=L+quadgk(f,0,s.breaks(i+1)-s.breaks(i));
end
