function w=checkWin(M)
w=0;
A=sum(M,1);
B=sum(M,2);
c=M(1,1)+M(2,2)+M(3,3);
d=M(1,3)+M(2,2)+M(3,1);
for i=1:3
    if A(i)==3|B(i)==3
        w=1;
    elseif A(i)==-3|B(i)==-3
        w=-1;
    end
end
if c==3|d==3
    w=1;
elseif c==-3|d==-3
    w=-1;
end
