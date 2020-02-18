n=0;
for i=999:-1:100
    for j=i:-1:100
        x=i*j;
        if x>n
            s=num2str(x);
            s1=fliplr(s);
            if strcmp(s,s1)
                n=x;
            end
        end
    end
end
n

            
            
      