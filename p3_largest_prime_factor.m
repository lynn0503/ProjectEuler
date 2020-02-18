
function lpf=p3_largest_prime_factor(n)
%% division
tic
    if nargin<1
        n=600851475143;
    end
    div=2;
    while(n>1)
        if(mod(n,div)~=0)
            div=div+1;
        else
            lpf=n;
            n=n/div;
        end
    end
toc
 %% factor
tic 
    f=factor(n);
    f(end)
toc
end




