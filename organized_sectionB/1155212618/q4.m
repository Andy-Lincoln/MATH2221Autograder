M = zeros(3);
disp(M);
w = 0;
n = 1;

while (w == 0) && (n <= 9)
    if (mod(n,2) == 1)
        disp('Player A:');
    else
        disp('Player B:');
    end
    
    v = 0;
    while (v == 0)
        i = input('Please input the desired row number: ');
        j = input('Please input the desired column number: ');
        v = checkValid(M,i,j);
    end
    
    M(i,j) = -1*(-1)^(mod(n,2));
    disp(M);
    w = checkWin(M);
    
    if w == 1
        disp('Player A wins!');
    elseif w == -1
        disp('Player B wins!');
    else 
        n = n + 1;
        v = 0;
    end
end
disp('The game has reached a draw');