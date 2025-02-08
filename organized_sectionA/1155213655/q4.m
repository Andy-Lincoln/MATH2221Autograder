M = zeros(3,3);
disp('Initial game board:')
disp(M);
w = 0;  
n = 1;  
while w == 0 && n <= 9  
    if mod(n, 2) == 1
        disp('Player A (1):');  
        playerSymbol = 1;
    else
        disp('Player B (-1):'); 
        playerSymbol = -1;
    end
    validMove = false;
    while ~validMove
        i = input('Enter row number (1-3): ');
        j = input('Enter column number (1-3): ');
        if isempty(i) || isempty(j) || ~isnumeric(i) || ~isnumeric(j)
            disp('Invalid input. Please enter numbers between 1 and 3.');
            continue;
        end
        if i < 1 || i > 3 || j < 1 || j > 3
            disp('Invalid move. Row & Column must be between 1 and 3.');
            continue;
        end
        if M(i, j) ~= 0
            disp('Invalid move. This position is already occupied.');
            continue;
        end
        validMove = true;
    end
    M(i, j) = playerSymbol;
    disp('Updated game board:')
    disp(M);
    w = checkWin(M);
    if w == 1
        if playerSymbol == 1
            disp('Player A wins!');
        else
            disp('Player B wins!');
        end
        break;
    end
    n = n + 1;
end
if w == 0
    disp('The game has reached a draw.');
end