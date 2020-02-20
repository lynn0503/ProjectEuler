m=0;
for a=-999:999
    for b=-1000:1000
        n=0;
        while 1
            y=n*n+a*n+b;
            if y>0
                if isprime(y)
                    n=n+1;
                else
                    if n>m
                        m=n;
                        res=a*b;
                        
                    end
                    break
                end
            else 
                break
            end 
        end
    end
end
res