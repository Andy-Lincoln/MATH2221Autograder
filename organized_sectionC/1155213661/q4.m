M = zeros(3,3);
disp(M);
w = 0;
n = 1;

while w == 0 && n <= 9
    if mod(n,2) == 1
        disp('Player A:');
        player = 1;
    else
        disp('Player B:');
        player = -1;
    end

    v = 0;
    while v == 0
        i = input('Please input the desired row number: ');
        j = input('Please input the desired column number: ');
        v = checkValid(M, i, j);
    end

    M(i,j) = player;
    disp(M);

    w = checkWin(M);

    if w == 0
        n = n + 1;
    end
end

if w == 1
    disp('Player A wins!');
elseif w == -1
    disp('Player B wins!');
else
    disp('The game has reached a draw');
end