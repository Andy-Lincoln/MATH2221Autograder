% Initialize the game board as a 3x3 zero matrix
M = zeros(3,3);
disp(M);

% Initialize the game state variables
w = 0;  % Winner status (0 = ongoing, 1 = Player A wins, -1 = Player B wins)
n = 1;  % Turn counter

% Game loop: Continue while no winner and there are available moves
while w == 0 && n <= 9
    % Determine the current player
    if mod(n,2) == 1
        disp('Player A');
        playerValue = 1;
    else
        disp('Player B');
        playerValue = -1;
    end
    
    % Ask for valid input from the player
    validMove = 0;
    while validMove == 0
        i = input('Please input the desired row number: ');
        j = input('Please input the desired column number: ');
        validMove = checkValid(M, i, j);
    end
    
    % Update the board with the player's move
    M(i, j) = playerValue;
    disp(M);
    
    % Check if the current player has won
    w = checkWin(M);
    
    % If there is a winner, display the result and exit the game
    if w == 1
        disp('Player A wins!');
        break;
    elseif w == -1
        disp('Player B wins!');
        break;
    end
    
    % Increment the turn counter
    n = n + 1;
end

% If the game ends in a draw
if w == 0
    disp('The game has reached a draw.');
end
