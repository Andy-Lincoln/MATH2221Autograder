function w = checkWin(M)
    % Check rows
    for i = 1:3
        if sum(M(i,:)) == 3
            w = 1;
            return;
        elseif sum(M(i,:)) == -3
            w = -1;
            return;
        else
            w = 0;
        end
    end
    
    % Check columns
    for j = 1:3
        if sum(M(:,j)) == 3
            w = 1;
            return;
        elseif sum(M(:,j)) == -3
            w = -1;
            return;
        else
            w = 0;
        end
    end
    
    % Check diagonals
    if trace(M) == 3
        w = 1;
        return;
    elseif trace(M) == -3
        w = -1;
        return;
    else
        w = 0;
    end
    
    if M(1,3) + M(2,2) + M(3,1) == 3
        w = 1;
        return;
    elseif M(1,3) + M(2,2) + M(3,1) == -3
        w = -1;
        return;
    else
        w = 0;
    end
end