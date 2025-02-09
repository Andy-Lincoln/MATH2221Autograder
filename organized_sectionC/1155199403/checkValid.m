function v = checkValid(M, i, j)
    % Initialize v to 0 (invalid move by default)
    v = 0;
    
    % Check if i is within valid range
    if i < 1 || i > 3
        disp('Invalid i');
        return;
    end
    
    % Check if j is within valid range
    if j < 1 || j > 3
        disp('Invalid j');
        return;
    end
    
    % Check if the selected cell is already occupied
    if M(i, j) ~= 0
        disp('Already occupied');
        return;
    end
    
    % If all checks pass, the move is valid
    disp('Valid input');
    v = 1;
end
