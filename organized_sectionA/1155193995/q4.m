
M = zeros(3,3);
n = 1; 

disp('Initial board:');
disp(M);

while n <= 9
   
    if mod(n, 2) == 1
        player = 1; 
        disp('Player A:');
    else
        player = -1; 
        disp('Player B:');
    end
   
    while true
        i = input('Please input the desired row number : ');
        j = input('Please input the desired column number : ');
       
        v = checkValid(M, i, j);
        if v == 1
            break; 
        end
    end
   
    M(i, j) = player;
   
    disp('Updated board:');
    disp(M);
   
    w = checkWin(M);
    if w == 1
        disp('Player A wins!');
        break;
    elseif w == -1
        disp('Player B wins!');
        break;
    end
   

    if n == 9
        disp('The game has reached a draw.');
        break;
    end
   
    n = n + 1;
end