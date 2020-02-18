tic
i=0;
n=0;
flag=1;
while flag
    i=i+1;
    n=n+i;
    cnt=0;
    f=factor(n);
    fcnt=length(f);
    for j=1:fcnt
        temp=size(unique(combnk(f,j),'rows'));
        cnt=cnt+temp(1,1);
    end
    if cnt>=499
        n
        cnt
        flag=0;
    end
end
toc