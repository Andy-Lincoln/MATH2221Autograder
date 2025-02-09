function w = checkWin(M)
    for i = 1:3
        temp = 0;
        for j = 1:3
            temp = temp + M(i,j);
        end
        if (temp == 3)
            w = 1;
            return
        end
        if (temp == -3)
            w = -1;
            return
        end
    end
    M = M';
    for i = 1:3
        temp = 0;
        for j = 1:3
            temp = temp + M(i,j);
        end
        if (temp == 3)
            w = 1;
            return
        end
        if (temp == -3)
            w = -1;
            return
        end
    end
    temp1 = 0;
    temp2 = 0;
    for i = 1:3
        temp1 = temp1 + M(i,i);
        temp2 = temp2 + M(4-i,i);
    end
    if (temp1 == 3) | (temp2 == 3)
            w = 1;
            return
        end
    if (temp1 == -3) | (temp2 == 3)
        w = -1;
        return
    end
    w = 0;
end
    
                