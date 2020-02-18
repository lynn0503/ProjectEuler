len=0;
for i=1:1000
    s=strrep(num2words(i),' ','');
    s=strrep(s,'-','');
    len=len+length(s);
end
len