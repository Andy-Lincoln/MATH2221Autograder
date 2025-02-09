function w = checkWin(M)
if (sum(sum(M,1)==3) ~= 0) || (sum(sum(M,2)==3) ~= 0) || (sum(sum(diag(M))==3) ~= 0) || (sum(sum(diag(fliplr(M)))==3) ~= 0)
    w=1;
elseif (sum(sum(M,1)==-3) ~=0 ) || (sum(sum(M,2)==-3) ~= 0) || (sum(sum(diag(M))==-3) ~= 0) || (sum(sum(diag(fliplr(M)))==-3) ~= 0)
    w=-1;
else 
    w=0;

end

    