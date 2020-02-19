tic
i=3;
a=1;
b=1;
while 1
    c=sym(a)+sym(b)
    l=length(char(c))
    if l>999
        % char instead of string
        % length(any string)=1
        i 
        break
    else 
        i=i+1;
        a=b;
        b=c;
    end
end
toc