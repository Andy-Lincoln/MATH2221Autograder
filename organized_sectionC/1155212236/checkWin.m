function w = checkWin(M)
    w = 0;
    x1 = 0;
    x2 = 0;
    for i = 1:3
        if sum(M(i,:)) == 3
            w = 1;
        end
        if sum(M(i,:)) == -3
            w = -1;
        end
        if sum(M(:,i)) == 3
            w = 1;
        end
        if sum(M(:,i)) == -3
            w = -1;
        end
        x1 = x1+M(i,i);
        x2 = x2+M(i,4-i);
    end
    if x1 == 3
        w = 1;
    end
    if x2 == 3
        w = 1;
    end
    if x1 == -3
        w = -1;
    end
    if x2 == -3
        w = -1;
    end
end
