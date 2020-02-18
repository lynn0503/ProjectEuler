for c=1000:-1:1
    for b=c:-1:1
        a=1000-b-c;
        if a>0 && c^2==b^2+a^2
            a*b*c
        end
    end
end

