function varargout=fun(varargin)

varargout=varargin;

l=zeros(size(varargin));

for i=1:nargin
    l(i)=numel(varargin{i});
end

[~,k]=sort(l);
varargout=varargin(k);

display(varargout);