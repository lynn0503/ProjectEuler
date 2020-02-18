%% loop
tic
s=0;
for i=1:999
    if or(not(mod(i,3)),not(mod(i,5)))
        %fprintf('%d\n',i)
        s=s+i;
    end
end
fprintf('%d\n',s);
toc
%% array
tic
v0=[1:999];
v1=not(mod(v0,3));
v2=not(mod(v0,5));
v3=v1+v2;
v3(v3>0)=1;
v4=v0.*v3;
sum(v4)
toc
%% Ъ§Са
tic
sum([3:3:999])+sum([5:5:999])-sum([15:15:999])
toc






