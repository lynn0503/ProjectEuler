%% read data
fid=fopen('p67_triangle.txt');
tri_low=zeros(100,100);
i=1;
while ~feof(fid)
    line_str=fgetl(fid);
    line_num=double(split(string(line_str)))';
    line_len=length(line_num);
    tri_low(i,[1:line_len])=line_num;
    i=i+1;
end
fclose(fid);
%% find longest path
mat=zeros(5151,5151);
mat2=zeros(5151,5151);
for i=1:100
    for j=1:i
        r=i*(i-1)/2+j;
        c=i*(i+1)/2+j;
        mat(r,c)=tri_low(i,j);
        mat(r,c+1)=tri_low(i,j);
        mat2(r,c)=-tri_low(i,j);
        mat2(r,c+1)=-tri_low(i,j);
        % better be negative rather than inverse
    end
end

dg=digraph(mat2);
min=inf;
path=zeros(101);
for out=5050:5151
    [p,d]=shortestpath(dg,1,out);
    if d<min
        min=d;
        path=p;
    end
end

max=0;
for i=1:100
    w=mat(path(i),path(i+1))
    max=max+w;
end
max

