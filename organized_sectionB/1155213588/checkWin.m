function w = checkWin(M)
    cols = sum(M,1);
    rows = sum(M,2);
    for k = 1:3
        if cols(k) == 3 || rows(k) == 3
            w = 1;
            return;
        elseif cols(k) == -3 || rows(k) == -3
            w = -1;
            return;
        end
    end
    if (M(1,1) + M(2,2) + M(3,3)) == 3 || (M(1,3) + M(2,2) + M(3,1)) == 3
        w = 1;
        return;
    elseif (M(1,1) + M(2,2) + M(3,3)) == -3 || (M(1,3) + M(2,2) + M(3,1)) == -3
        w = -1;
        return;
    end
    w = 0;
end
