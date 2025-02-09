function w = checkWin(M)
    cols = sum(M,1);
    rows = sum(M,2);
    for i = 1:3
        if (cols(i) == 3 || rows(i) == 3)
            w = 1;
            return
        elseif (cols(i) == -3 || rows(i) == -3)
            w = -1;
            return
        end
    end
    diag1 = trace(M);
    diag2 = M(1,3) + M(2,2) + M(3,1);
    if (diag1 == 3 || diag2 == 3)
        w = 1;
        return
    elseif (diag1 == -3 || diag2 == -3)
        w = -1;
        return
    end
    w = 0;
end