%% digits
syms x;
eq=x-log10(x)==log10(59049)+1;
s=solve(eq,x);
double(s)
%% sum
res=0;
for i=10:10^6-1
    if i==sum((num2str(i)-'0').^5)
        i
        res=res+i;
    end
end
res
