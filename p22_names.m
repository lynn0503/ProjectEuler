%% read data
fid=fopen('p22_names.txt');
while ~feof(fid)
    strline=fgetl(fid);
end
fclose(fid);
%% scores
strarray=strrep(strline,'"','');
strarray=split(strarray,',');
strsorted=sort(strarray);
scores=0;
for i=1:length(strsorted)
    name=char(strsorted(i));
    scores=scores+sum(name-'A'+1)*i;
end
scores