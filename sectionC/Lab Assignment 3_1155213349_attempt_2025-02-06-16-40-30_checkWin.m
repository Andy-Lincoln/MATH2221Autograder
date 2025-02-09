function w=checkWin(M)
u=sum(M,1);
v=sum(M,2);
w=0;
for i=1:3
    for j=1:3
if u(1,j)==3 | v(i,1)==3 | M(1,1)+M(2,2)+M(3,3)==3 | M(1,3)+M(2,2)+M(3,1)==3
    w=1;
else if u(1,j)==-3 | v(i,1)==-3 | M(1,1)+M(2,2)+M(3,3)==-3 | M(1,3)+M(2,2)+M(3,1)==-3
        w=-1;
end
    end
    end
end
