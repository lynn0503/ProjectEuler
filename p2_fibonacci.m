tic
a=[1 2];
while a(end-1)+a(end)<4000000
    a(end+1)=a(end-1)+a(end);
end
a(mod(a,2)>0)=0;
sum(a)
toc


