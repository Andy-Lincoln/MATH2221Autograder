function w = checkWin(M)
    % Initialize output to 0 (no winner)
    w = 0;
    
    % Check rows for a win
    if any(sum(M, 2) == 3)  % Sum of any row is 3 → Player A wins
        w = 1;
        return;
    elseif any(sum(M, 2) == -3)  % Sum of any row is -3 → Player B wins
        w = -1;
        return;
    end

    % Check columns for a win
    if any(sum(M, 1) == 3)  % Sum of any column is 3 → Player A wins
        w = 1;
        return;
    elseif any(sum(M, 1) == -3)  % Sum of any column is -3 → Player B wins
        w = -1;
        return;
    end

    % Check main diagonal (top-left to bottom-right)
    if sum(diag(M)) == 3
        w = 1;
        return;
    elseif sum(diag(M)) == -3
        w = -1;
        return;
    end

    % Check anti-diagonal (top-right to bottom-left)
    if sum(diag(flipud(M))) == 3
        w = 1;
        return;
    elseif sum(diag(flipud(M))) == -3
        w = -1;
        return;
    end
end
