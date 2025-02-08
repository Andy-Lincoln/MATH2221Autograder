function w = checkWin(M)
if sum(M,1)==3 | sum(M,2)==3
 w=1
elseif sum(M,1)==-3 | sum(M,2)==-3
 w=-1
end
