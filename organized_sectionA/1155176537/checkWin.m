function w=checkWin(M)
i=1:3;
j=1:3;

if sum(M,i)==0 | sum(M,j)==0 | diag(M)==0
    w=0;
elseif sum(M,i)==3 | sum(M,j)==3 |diag(M)==3
    w=1;
elseif sum(M,i)==-3 | sum(M,j)==-3 |diag(M)==-3
    w=-1;
end