function w=checkWin(M)
a=sum(M,1);
b=sum(M,2);
c=M(1,1)+M(2,2)+M(3,3);
d=M(1,3)+M(2,2)+M(3,1);
for i=1:3;
    if a(i)~=3&&b(i)~=3&&c~=3&&d~=3&&a(i)~=-3&&b(i)~=-3&&c~=-3&&d~=-3
        w=0;
else if a(i)==3|b(i)==3|c==3|d==3
        w=1;
    else w=-1
    end
    end
end
end
            