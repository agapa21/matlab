clear variables;
clc;

% A=randi(10,5);
% nnz(A>5);
% 
% mean(A(:));                        % ":" szybka zamiana na pionowy wektor
% 
% nnz(abs(A-mean(A(:)))<1);
% A(abs(A-mean(A(:)))<1);
% 
% B=A(:,randperm(5));                %randperm - liczby od 1 do 5 w losowej kolejnoœci (bez powtorzeñ)
% [~,p]=sort(sum(A));
% C=A(:,p);

%prawdopodobieñstwo wyst¹pienia ciêciwy d³u¿szej od boku trójk¹ta równobocznego wpisanego w okr¹g

%paradoks Bertranda

% ile=0;
%     
% for i=1:10000
%     a1=2*pi*rand;
%     A=[cos(a1);sin(a1)];
%     a1=2*pi*rand;
%     B=[cos(a1);sin(a1)];
%     d=norm(B-A);
%     if d>sqrt(3)
%         ile=ile+1;
%     end
% end
% 
% disp(ile/10000);

%paradoks Monty Halla
%https://pl.wikipedia.org/wiki/Paradoks_Monty%E2%80%99ego_Halla

% ile=0;
% for i=1:10000
%     G=randi(3);
%     N=randi(3);
%     if G==N
%         O=randi(3);
%         while O==G
%             O=randi(3);
%         end
%     else
%         O=6-G-N;
%     end
%     if true
%         G=6-O-G;
%     end
%     if G==N
%         ile=ile+1;
%     end
% end
% 
% disp(ile/10000);