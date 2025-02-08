function q4()
    % Initialize the game board
    M = zeros(3, 3);
    player = 1; % Start with Player A

    while true
        % Display the current board
        dispBoard(M);
        
        % Get player move
        [row, col] = getPlayerMove(player);
        
        % Check if the move is valid
        if checkValid(M, player, row, col)
            % Update the board
            M(row, col) = player;

            % Check for win condition
            if checkWin(M)
                dispBoard(M);
                fprintf('Player %d wins!\n', player);
                break; % End the game
            end
            
            % Check for draw condition
            if all(M(:) ~= 0)
                dispBoard(M);
                fprintf('The game is a draw!\n');
                break; % End the game
            end
            
            % Switch players
            player = -player; % Change player: 1 to -1 and -1 to 1
        else
            fprintf('Invalid move. Try again.\n');
        end
    end
end

function dispBoard(M)
    % Display the game board
    disp('Current Board:');
    for i = 1:3
        for j = 1:3
            if M(i, j) == 1
                fprintf(' X ');
            elseif M(i, j) == -1
                fprintf(' O ');
            else
                fprintf(' . '); % Empty cell
            end
            if j < 3
                fprintf('|');
            end
        end
        fprintf('\n');
        if i < 3
            disp('-----------');
        end
    end
end

function [row, col] = getPlayerMove(player)
    % Get a valid move from the player
    while true
        fprintf('Player %d, enter your move (row and column): ', player);
        move = input('', 's'); % Get the input as a string
        move = str2num(move); % Convert to numeric array
        
        if length(move) == 2 && all(move >= 1 & move <= 3)
            row = move(1);
            col = move(2);
            return; % Valid move
        else
            fprintf('Invalid input. Please enter two numbers between 1 and 3.\n');
        end
    end
end