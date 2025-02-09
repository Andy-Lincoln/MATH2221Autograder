function w =checkWin(M)
if sum(M,1)=3 | sum(M,2)=3 |diag(M)=3
    w=1; 
elseif sum(M,1)=-3|sum(M,2)=-3|diag(M)=-3 
    w=-1;
else
    w=0;
end 
end