function w = checkWin(M);
col = sum(M,1);
row = sum(M,2);
w=0;
for i= 1:3
    if col(i)==3 || row(i)==3 || trace(M)==3 || M(1,3)+M(2,2)+M(3,1)==3
        w=1;
    elseif col(i)==-3 || row(i)==-3 || trace(M)==-3 || M(1,3)+M(2,2)+M(3,1)==-3
        w=-1;
    end
end
end