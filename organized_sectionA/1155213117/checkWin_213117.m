function w=checkWin(M)
if abs(sum(M(i,:)))==3
        w=1;
        return;
    elseif abs(sum(M(i,:)))==-3
            w=-1;
            return;
        else 
            w=0;
end
    if abs(sum(M(:,j)))==3
        w=1;
        return;
    elseif abs(sum(M(:,j)))==-3
            w=-1;
            return;
        else 
            w=0;
    end
        if abs(M(1,1)+M(2,2)+M(3,3))==3||abs(M(1,3)+M(2,2)+M(3,1))==3
            w=1;
            return;
        elseif abs(M(1,1)+M(2,2)+M(3,3))==-3||abs(M(1,3)+M(2,2)+M(3,1))==-3
            w=-1;
            return;
        else
            w=0;
        end