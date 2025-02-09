function w = checkWin(M)
    for i = 1:3
        if sum(M(i, :)) == 3  
            w = 1;
            return;
        elseif sum(M(i, :)) == -3  
            w = -1;
            return;
        elseif sum(M(:, i)) == 3  
            w = 1;
            return;
        elseif sum(M(:, i)) == -3  
            w = -1;
            return;
        end
    end
    if sum(diag(M)) == 3 
        w = 1;
        return;
    elseif sum(diag(M)) == -3  
        w = -1;
        return;
    elseif sum(diag(flip(M))) == 3  
        w = 1;
        return;
    elseif sum(diag(flip(M))) == -3  
        w = -1;
        return;
    end
    w = 0;
end