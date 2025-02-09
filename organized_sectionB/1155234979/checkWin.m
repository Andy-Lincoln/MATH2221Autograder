function w=checkWin(M)
A=sum(M,1);
B=sum(M,2);
if A(1)==3||A(2)==3||A(3)==3
    w=1;
elseif A(1)==-3||A(2)==-3||A(3)==-3
    w=-1;
elseif B(1)==3||B(2)==3||B(3)==3
    w=1;
elseif B(1)==-3||B(2)==-3||B(3)==-3
    w=-1;
elseif M(1,1)+M(2,2)+M(3,3)==3
    w=1;
elseif M(1,1)+M(2,2)+M(3,3)==-3
    w=-1;
else w=0;
end