clear variables;
clc;

p=rand(1,11);
x=linspace(-1,1,20);
y=polyval(p,x);
%plot(x,y,'r*');

for n=0:19
    p1=polyfit(x,y,n);
    y1=polyval(p1,x);

    Q(n+1)=mean(abs(y-y1));
    display(Q(n+1));
    
end

n=0:1:19;
bar(n,Q,'b');