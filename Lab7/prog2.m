clear variables;
clc;
close all;

x=-1:0.1:1;
y=-2:0.1:0;

% for i=1:length(x)
%     for j=1:length(y)
%         z(j,i)=x(i).^2+y(j).^1;
%     end
% end
% 
% surf(x,y,z);

[X,Y]=meshgrid(x,y);
z=X.^2+Y;
figure('Position', get(0,'ScreenSize'), 'Color', [1,1,1]);
subplot(1,2,1)
surf(x,y,z);
subplot(1,2,2)
contourf(x,y,z,50);




