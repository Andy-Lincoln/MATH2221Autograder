function w=checkWin(M)
column_sum=sum(M,1);
row_sum=sum(M,2);
for i=1:3
    if column_sum(1,i)==3|row_sum(i,1)==3
        w=1
        break;
    elseif column_sum(1,i)==-3|row_sum(i,1)==-3
        w=-1
        break;
    elseif trace(M)==3|trace(flip(M,2))==3
        w=1
        break;
    elseif trace(M)==-3|trace(flip(M,2))==-3
        w=-1
        break;
    
    end
    w=0;
end
end
        