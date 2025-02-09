function w=checkWin(M)
    for i=sum(M,1)
        if i==3
            w=1;
            return
        elseif i==-3
            w=-1;
            return
        end
    end
    for i=sum(M,2)'
        if i==3
            w=1;
            return
        elseif i==-3
            w=-1;
            return
        end
    end
    temp=M(1,1)+M(2,2)+M(3,3);
    if temp==3
        w=1;
        return
    elseif temp==-3
        w=-1;
        return
    end
    temp=M(1,3)+M(2,2)+M(3,1);
    if temp==3
        w=1;
        return
    elseif temp==-3
        w=-1;
        return
    end
    w=0;
end