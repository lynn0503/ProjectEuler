ami_sum=0;
% factor_sum(220)

for a=2:10000
    b=factor_sum(a);
    if factor_sum(b)==a && a~=b
        fprintf('%d %d\n',a,b)
        ami_sum=ami_sum+a;
    end
end

ami_sum

function y=factor_sum(x)
    f=factor(x);
    fl=length(f);
    fa=[1];
    for i=2:fl
        p=prod((combnk(f,i))');
        fa=[fa p];
    end
    fa=[fa f];
    fa=unique(fa);
    fa=fa(fa~=x);
    y=sum(fa);
end
