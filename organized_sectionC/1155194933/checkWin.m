function w=checkWin(M)
C=sum(M,1);
R=sum(M,2);
if C(1)==3|C(2)==3|C(3)==3|R(1)==3|R(2)==3|R(3)==3|trace(M)==3|M(3,1)+M(2,2)+M(1,3)==3
    w=1;
elseif C(1)==-3|C(2)==-3|C(3)==-3|R(1)==-3|R(2)==-3|R(3)==-3|trace(M)==-3|M(3,1)+M(2,2)+M(1,3)==-3
    w=-1;
else
    w=0;
end
