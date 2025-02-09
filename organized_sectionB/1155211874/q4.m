M = zeros(3,3);
disp(M);
w = 0;
n = 1;
while w == 0 && n <= 9
    if mod(n,2) == 1
        disp('Player A:');
        i = input('Please input the desired row number: ');
        j = input('Please input the desired column number: ');
        v = checkValid(M,i,j);
        while v == 0
        i = input('Please input the desired row number: ');
        j = input('Please input the desired column number: ');
        v = checkValid(M,i,j);
        end
        M(i,j) = 1;
        disp(M);
        w = checkWin(M);
        if w == 1
            disp('Player A wins!')
         break
        elseif w == -1
            disp('Player B wins!')
           break
        elseif w == 0 & n ==9
            disp('The game has reached a draw')
        end
    elseif mod(n,2) == 0
         disp('Player B:');
        i = input('Please input the desired row number: ');
        j = input('Please input the desired column number: ');
        v = checkValid(M,i,j);
        while v == 0
        i = input('Please input the desired row number: ');
        j = input('Please input the desired column number: ');
        v = checkValid(M,i,j);
        end
        M(i,j) = 1;
        disp(M);
        w = checkWin(M);
        if w == 1
            disp('Player A wins!')
         break
        elseif w == -1
            disp('Player B wins!')
           break
        elseif w == 0 & n ==9
            disp('The game has reached a draw')
        end
    end
end
            
            