function y=p15_lattice(xo)
% xo=[20,20]
    if nargin<2
        xo=[20,20];
    end
    r=xo(1,1);
    c=xo(1,2);
    mat=ones(r+1,c+1);
    for i=r:-1:1
        for j=c:-1:1
            mat(i,j)=mat(i,j+1)+mat(i+1,j);
        end
    end    
    y=mat(1,1);
end
