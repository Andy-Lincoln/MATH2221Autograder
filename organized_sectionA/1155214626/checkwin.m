function w=checkwin(M)

a=sum(M,1);
b=sum(M,2);

c=find(a==3);
d=find(a==-3);
e=find(b==3);
f=find(b==-3);
if sum(c)>0
    w=1
elseif sum(d)>0
    w=-1
elseif sum(e)>0
    w=1
elseif sum (f)>0
    w=-1
elseif M(1,1)+M(2,2)+M(3,3)==3;
        w=1
elseif M(1,1)+M(2,2)+M(3,3)==-3;
        w=-1
elseif M(3,1)+M(2,2)+M(1,3)==3;
    w=1
elseif M(3,1)+M(2,2)+M(1,3)==3;
    w=-1
else w=0
end