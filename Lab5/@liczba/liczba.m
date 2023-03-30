classdef liczba
    properties
       n;
    end
    
    properties(SetAccess=immutable)
        p;
    end 
    
    methods
        function obj=liczba(wart_p,wart_n)
            if nargin ==0
               obj.p=10; 
            end
            if nargin==1
                if isa(wart_p, 'liczba')
                obj=wart_p;
                else
                    obj.p=wart_p;
                end
            end
            if nargin==2
                obj.p=wart_p;
                obj.n=wart_n;
            end
        end
        
        function obj=set.n(obj,n)
            if obj.p<10
                p_litera=char(obj.p);
            else
                p_litera=char(obj.p-10+double('A'));
            end 
            
           for i=1:length(n)
               if double(p_litera)<=double(obj.n(i))
                   obj.n='0';
                   return;
               end
           end
        end
        
        function n10=liczba2dec(obj)
            n10=0;
            for i=1:length(obj.n)
               if double(obj.n(i))>=double('A')&&double(obj.n(i))<=double('Z')
                    n10=obj.p*n10+double(obj.n(i))-double('A')+10; 
               else
                    n10=obj.p*n10+str2num(obj.n(i)); 
               end
            end
        end
        
        function display(obj)
           disp(obj.p);
           disp(obj.n);
        end
    end
end

