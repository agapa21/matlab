function [c,r]=ciag(varargin)

x=cell2mat(varargin);

if nargin==0 || length(x)<3 
    disp("za malo argumentow");
    c=' ';
    r=[];
    return;
end

d=diff(x);

if all(d(1)==d)
    c='A';         %ciag arytmetyczny
    r=d(1);
    return;
end

d=x(2:end)./x(1:end-1);

if all(d(1)==d)
    c='G';         %ciag geometryczny
    r=d(1);
    return;
end

c='Z';
r=[];

end