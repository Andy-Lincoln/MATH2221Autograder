function w = checkWin(M)
c = sum(M, 1);
r = sum(M, 2);
if ((sum(diag(M)))==3 || c(1)==3 || c(2)==3 || c(3)==3 || r(1)==3 || c(2)==3 || c(3)==3) == 1
    w = 1;
elseif ((sum(diag(M)))==-3 || c(1)==-3 || c(2)==-3 || c(3)==-3 || r(1)==-3 || c(2)==-3 || c(3)==-3) == 1
    w = -1;
else 
    w = 0;
end
end