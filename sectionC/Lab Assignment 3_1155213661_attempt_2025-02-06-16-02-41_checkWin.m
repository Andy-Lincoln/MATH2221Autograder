function w = checkWin(M)
    rowSums = sum(M,2);
    if any(rowSums == 3)
        w=1;
        return;
    elseif any(rowSums == -3)
        w=-1;
        return;
    end
    
    colSums = sum(M,1);
    if any(colSums == 3)
        w=1;
        return;
    elseif any(colSums == -3)
        w=-1;
        return;
    end
    
    diagSums = M(1,1)+M(2,2)+M(3,3);
    if any(diagSums == 3)
        w=1;
        return;
    elseif any(diagSums == -3)
        w=-1;
        return;
    end
    
    antiDiagSums = sum(M,1);
    if antiDiagSums == 3
        w=1;
        return;
    elseif antiDiagSums == -3
        w=-1;
        return;
    end
    
    w=0;
end