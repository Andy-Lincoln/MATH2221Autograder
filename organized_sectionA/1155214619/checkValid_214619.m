function v = checkValid(M, player, row, col)
    % Check if the specified row and column are valid
    if row < 1 || row > 3 || col < 1 || col > 3
        v = -1; % Invalid indices
        disp('Invalid indices. Please enter values between 1 and 3.');
        return; 
    end
    
    if M(row, col) ~= 0
        v = 0; % Cell is already occupied
        disp('Invalid move. The cell is already occupied.');
        return;
    end
    
    % If valid move, update the matrix
    M(row, col) = player;
    v = 1; % Valid move
end