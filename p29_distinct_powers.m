s=[];
for a=2:100
    for b=2:100
        c=a^b;
        if ismember(c,s)
            continue 
            % instead of break
        else 
            s=[s c];
        end
    end
end
length(s)