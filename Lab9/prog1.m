clear variables;
close all;
clc;

fs=8192;
L=8192;
t=(0:L-1)/fs;

y=sin(2*pi*200*t);

A=rand(1,10);
F=100*rand(1,10);

for i=1:10
y=y+A(i)*sin(2*pi*F(i)*rand*t);
end

plot(t(t<=0.015),y(t<=0.015));

n=2^nextpow2(L);
s=fft(y,n)/L;
f=fs/2*linspace(0,1,n/2+1);
figure
plot(2*abs(s(1:length(f))));



