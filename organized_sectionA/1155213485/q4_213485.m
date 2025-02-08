M = zeros(3);
disp(M);
w = 0;
n = 1;
v = 0;
while w == 0 && n <= 9
    if mod(n,2) == 1
        disp('Player A:')
    elseif mod(n,2) == 0
        disp('Player B:')
    end
    while v == 0
    i = input('Please input the desired row number: ');
    j = input('Please input the desired column number: ');
    v = checkValid(M,i,j);
    end
        if mod(n,2) == 1
            M(i,j) = 1;
        else M(i,j) = -1;
        end
        disp(M);
        w = checkWin(M);
         if w == 1
            disp('Player A wins!')
            elseif w == 0
                disp('The game has reached a draw');
            else n = n + 1;
            end
        if mod(n,2) == 0
            M(i,j) = -1;
            disp(M);
            w = checkWin(M);
            if w == -1
                disp('Player B wins!');
            elseif w == 0
                disp('The game has reached a draw');
            else n = n + 1;
            end
            
        end
        n = n + 1
        end