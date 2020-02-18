tic
n0=prod(primes(20));
n=n0;
divs=[11:20];
while any(mod(n,divs))
    n=n+n0;
end
n
toc


