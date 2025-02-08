function w=checkWin(M)
x=sum(M,1);
y=sum(M,2);
if x(1)==3 || x(2)==3 || x(3)==3 
    w=1;
elseif    x(1)==-3 || x(2)==-3 || x(3)==-3 
    w=-1;
elseif y(1)==3 || y(2)==3 || y(3)==3 
    w=1;
elseif    y(1)==-3 || y(2)==-3 || y(3)==-3 
    w=-1;
elseif sum(diag(M))==3
    w=1;
elseif sum(diag(M))==-3
    w=-1
elseif M(1,3)+M(2,2)+M(3,1)==3
    w=1;
elseif M(1,3)+M(2,2)+M(3,1)==-3
    w=-1;
else
    w=0
end
end
