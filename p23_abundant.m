is_abundant=struct;
is_abundant(1).is_abundant=0;
for n=2:28122
    m=1:ceil(n/2);
    s=sum(m(rem(n,m)==0));
    if s>n
        is_abundant(n).is_abundant=1;
    else
        is_abundant(n).is_abundant=0;
    end
end
res=0;

for n=1:28123
    flag=0;
    for i=1:ceil(n/2)
        if is_abundant(i).is_abundant && is_abundant(n-i).is_abundant
            flag=1;
            fprintf('%d is abundant sum\n',n);
            break
        end
    end
    if ~flag
        res=res+n;
    end
    
end
res