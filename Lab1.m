clear variables;
clc;

% n=input('Podaj liczbe ');
% disp(n);

%czy=true;
%
% if n<2
%     czy=false;
% else
%     for i=2:sqrt(n)
%         if mod(n,i)==0
%             czy=false;                    %isprime()
%             break;
%         end
%     end
% end
%
% if czy
%     disp('Jest pierwsza');
% else
%     disp('Nie jest pierwsza');
% end;

% if n<2
%     disp(n);
% else
%     while ~isprime(n)
%         for i=2:n
%             if mod(n,i)==0;
%                 disp(i);                    %factor()
%                 n=n/i;
%                 break;
%             end
%         end
%     end
%     disp(n);
% end

p=0;
n=10000;

for i=1:n
    p=p+1/i^2;
end
p=(6*p)^0.5;
display(p);

P=(6*sum(1./(1:n).^2))^0.5;
display(P);

% E=abs(pi-p);
% display(E);

%format rat
%format compact

%vpa(x,n) - liczby z dokladnoscia do n miejsc po przecinku


