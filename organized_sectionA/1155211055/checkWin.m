function w=checkWin(M)
w=0;
s=sum(M,1);
for i=1:3
    if s(i)==3
        w=1;
    elseif s(i)==-3
        w=-1;
    end
end
s=sum(M,2);
for j=1:3
    if s(j)==3
        w=1;
    elseif s(j)==-3
        w=-1;
    end
end
s=diag(M);
if sum(s)==3
    w=1;
elseif sum(s)==-3
    w=-1;
end
s=M(3,1)+M(2,2)+M(1,3);
if s==3
    w=1;
elseif s==-3
    w=-1;
end

