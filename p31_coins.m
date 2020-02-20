% 1p, 2p, 5p, 10p, 20p, 50p, ?1 (100p), and ?2 (200p)
function y=p31_coins(x)
    coin=[1 2 5 10 20 50 100 200];
    dp=zeros(1,x);
    for i=1:8
        for j=1:x
            
            if j==coin(i)
                dp(j)=dp(j)+1;
            elseif j>coin(i)
                dp(j)=dp(j)+dp(j-coin(i));
            end
           
        end
    end
    y=dp(x);
end