M = zeros(3, 3); 
w = 0;          
n = 1;           
disp('Initial game board:');
disp(M);
while w == 0 && n <= 9
    if mod(n, 2) == 1
        disp('Player A''s turn:');
    else
        disp('Player B''s turn:');
    end

    validInput = 0;
    while ~validInput
        i = input('Please input the desired row number: ');
        j = input('Please input the desired column number: ');
        v = checkValid(M, i, j);
        if v == 1
            validInput = 1;
        end
    end

    if mod(n, 2) == 1
        M(i, j) = 1;
    else
        M(i, j) = -1;
    end

    disp('Updated game board:');
    disp(M);

    w = checkWin(M);
    if w == 1
        disp('Player A wins!');
    elseif w == -1
        disp('Player B wins!');
    end

    n = n + 1;
end

if w == 0
    disp('The game has reached a draw.');
end