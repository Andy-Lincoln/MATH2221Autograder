function w = checkWin(M)
    % Check rows and columns for a win condition
    for i = 1:3
        if abs(sum(M(i, :))) == 3 % Check rows
            w = true; % Player has won
            return;
        end
        
        if abs(sum(M(:, i))) == 3 % Check columns
            w = true; % Player has won
            return;
        end
    end
    
    % Check diagonals for a win condition
    if abs(M(1, 1) + M(2, 2) + M(3, 3)) == 3 || ...
       abs(M(1, 3) + M(2, 2) + M(3, 1)) == 3
        w = true; % Player has won
        return;
    end
    
    w = false; % No win condition met
end