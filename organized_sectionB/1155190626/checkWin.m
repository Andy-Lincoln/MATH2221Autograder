function w = checkWin(M)
    rowSums = sum(M,2);
    if any(rowSums == 3)
        w = 1;
        return;
    elseif any(rowSums == -3)
        w = -1;
        return;
    end
    
    colSums = sum(M,1);
    if any(colSums == 3)
        w = 1;
        return;
    elseif any(colSums == -3)
        w = -1;
        return;
    end
    
    diagSum1 = trace(M);
    if diagSum1 == 3
        w = 1;
        return;
    elseif diagSum1 == -3
        w = -1;
        return;
    end
    
    diagSum2 = M(1,3) + M(2,2) + M(3,1)
    if diagSum2 == 3
        w = 1;
        return;
    elseif diagSum2 == -3
        w = -1;
        return;
    end
    
    w = 0;
end