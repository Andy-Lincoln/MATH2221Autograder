function[w]=checkWin(M)
if any(sum(M,2) == 3) || (sum(M,1) == 3) || (sum(diag(M))==3) || (sum(diag(fliplr(M)))==3)
    w=1;
elseif any (sum(M,2) == -3) || (sum(M,1) == -3) || (sum(diag(M))==-3) || (sum(diag(fliplr(M)))==-3)
    w=-1;
else
    w=0;
end
