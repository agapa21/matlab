clear variables;
clc;

% w = randi(10,1,10);              % od -5 do 5
% disp(w);

% a=w(w<0);                        % liczby z w mniejsze od 0
% length(a);                        
% 
% nnz(w<0);                        % number of non zero elements

%w(w<0)=0;                         % zeruje ujemne liczby
%w(w<0)=[];                        % usuwa ujemne liczby

%for i=1:length(w)                 %z³a formu³a (d³ugoœæ wektora zmienna)
% i=1;
% while i <= length(w)
%     if w(i)<0
%         w(i)=[];
%         i=i-1;
%     end
%     i=i+1;
% end

% indx=[];
% for i=1:length(w)
%     if w(i)<0
%         indx(end+1)=i;
%     end 
% end
% w(indx)=[];
% 
% disp(w);

% sum(w(w<0));
% sum(w(w>0));

%w(1:2:end)=-w(1:2:end);

% w1=w(1:2:end);
% w1(mod(w1,2)==1)=-w1(mod(w1,2)==1);  


% A=[2,6;...
%     2,6.000001];
% 
% b=[8;...
%     8.000001];

% A=[2,6;...
%     2,5.999999];
% 
% b=[8;...
%     8.000002];

A0=[2,6;2,6];
b0=[8;8];
e=0.1;

% for i=1:20
%     i
%     A=A0+diag([0,e]);                  % diag - macierz diagonalna (niezerowa tylko na przek¹tnej)
% %     b=b0+[0;e];
%     rcond(A)                           % wpó³czynnik uwarunkowania macierzy (zbli¿aj¹c siê do ^-15 jest ju¿ kiepsko :)
% %     x=A\b;
% %     x=A^-1*b;
%     e=e/10;
% end

%x=A^-1*b;                             % mniej wydajne rozwi¹zanie
% x=A\b;
% disp(x);

%wyznaczyc Fibonaciego ze wzoru 100 = ....








