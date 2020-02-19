%% read data
fid=fopen('p18_path.txt');
tri_low=zeros(15,15);
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
mat=zeros(136,136);
mat2=zeros(136,136);
for i=1:15
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
min=10000;
path=zeros(16);
for out=121:136
    [p,d]=shortestpath(dg,1,out);
    if d<min
        min=d;
        path=p;
    end
end

max=0;
for i=1:15
    w=mat(path(i),path(i+1))
    max=max+w;
end
max

