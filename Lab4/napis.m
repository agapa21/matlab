function n=napis(n,z1,z2)

if nargin==3
    n(n==z1)=z2;
else
    n(n==z1)='';
end


