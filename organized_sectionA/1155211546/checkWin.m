function w=checkWin(M)
if any(sum(M,1)==3)==1 || any(sum(M,2)==3)==1 ||M(1,1)+M(2,2)+M(3,3)==3 ||M(3,1)+M(2,2)+M(1,3) ==3
    w=1;
elseif any(sum(M,1)==-3)==1 || any(sum(M,2)==-3)==1 ||M(1,1)+M(2,2)+M(3,3)==-3 ||M(3,1)+M(2,2)+M(1,3) ==-3
    w=-1;
else 
    w=0;
end
end