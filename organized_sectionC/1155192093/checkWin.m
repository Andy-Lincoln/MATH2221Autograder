function w=checkWin(M)
a=sum(M,1)
b=sum(M,2)
c=trace(M)
d=M(3,1)+M(2,2)+M(1,3)
if a(1)==3 | a(2)==3 |a(3)==3| b(1)==3 | b(2)==3| b(3)==3 | c==3 | d==3
    w=1;
elseif a(1)==-3 | a(2)==-3 |a(3)==-3| b(1)==-3 | b(2)==-3| b(3)==-3 | c==-3 | d==-3
    w=-1;
else
    w=0;
end
end