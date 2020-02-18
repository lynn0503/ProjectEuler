y=1901;
sundays=0;
d=0;
w=1;
fileID = fopen('res.txt','w');
while y<2001
    m=1; 
    while 1
        if ismember(m,[4 6 9 11]) && d==30
            m=m+1;d=0;
        elseif ismember(m,[1 3 5 7 8 10]) && d==31
            m=m+1;d=0;
        elseif m==2 && mod(y,4)==0 && d==29
            m=m+1;d=0;
        elseif m==2 && d==28
            m=m+1;d=0;
        elseif m==12 && d==31
            d=0;
            break
  
        end
        
        if w==7
            if d==1
                sundays=sundays+1;
            end
            w=0;
        end
        
        d=d+1;
        w=w+1;
        fprintf(fileID,'%d %d %d %d\n',y,m,d,w);
    end   
    y=y+1;
end
fclose(fileID);
sundays