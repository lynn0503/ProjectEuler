max=0;
for n=1000000:-1:1
    j=0;
    i=n;
    while i>1
        j=j+1;
        if mod(i,2)==0
            i=i/2;
        else 
            i=i*3+1;
        end
    end
    if j>max
        max=j;
        n
    end
end
max

