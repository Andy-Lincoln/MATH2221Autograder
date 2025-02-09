function w=checkWin(M)
w=0;
a=sum(M,1);
b=sum(M,2);
for i=1:3
    if a(i)==3 || b(i)==3
        w=1;
    elseif a(i)==-3 || b(i)==-3
        w=-1;
    end
end
c=0; d=0;
for j=1:3
c=c+M(j,j);
d=d+M(j,4-j);
end
if c==3 || d==3
    w=1;
elseif c==-3 || d==-3
    w=-1;
end
end