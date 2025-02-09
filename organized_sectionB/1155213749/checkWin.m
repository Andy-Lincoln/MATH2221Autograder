function w=checkWin(M)
    rowsum=sum(M,2);
    columnsum=sum(M,1);
    if rowsum(1,1)==3|rowsum(2,1)==3|rowsum(3,1)==3|columnsum(1,1)==3|columnsum(1,2)==3|columnsum(1,3)==3|trace(M)==3|M(3,1)+M(2,2)+M(1,3)==3
        w=1;
    elseif rowsum(1,1)==-3|rowsum(2,1)==-3|rowsum(3,1)==-3|columnsum(1,1)==-3|columnsum(1,2)==-3|columnsum(1,3)==-3|trace(M)==-3|M(3,1)+M(2,2)+M(1,3)==-3
        w=-1;
    else
        w=0;
    end
end
