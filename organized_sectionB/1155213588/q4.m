M = zeros(3);
disp(M);
w = 0;
n = 1;
while w == 0 && n <= 9
    if mod(n,2)
        player = 1;
        disp('Player A:');
    else
        player = -1;
        disp('Player B:');
    end
    
    v = 0;
    while v == 0
        i = input('Please input the desired row number: ');
        j = input('Please input the desired column number: ');
        v = checkValid(M,i,j);
    end
    
    M(i,j) = player;
    disp(M);
    w = checkWin(M);
    if w == 1
        disp('Player A wins!');
        break;
    elseif w == -1
        disp('Player B wins!');
        break;
    end
    
    n = n + 1;
end
if w == 0
    disp('The game has reached a draw');
end
    