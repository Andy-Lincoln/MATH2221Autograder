M = zeros(3);
disp(M)
w = 0;
n = 1;
while w == 0 & n <= 9
    if mod(n,2) == 1
        disp('Player A:')
        i = input('Please input the desired row number:  ');
        j = input('Please input the desired column number:  ');
        while checkValid(M,i,j) == 0
            i = input('Please input the desired row number:  ');
            j = input('Please input the desired column number:  ');
        end
        M(i,j) = 1;
        disp(M)
        if checkWin(M) == 1
            disp('Player A wins!')
        end
    else disp('Player B:')
        i = input('Please input the desired row number:  ');
        j = input('Please input the desired column number:  ');
        while checkValid(M,i,j) == 0
            i = input('Please input the desired row number:  ');
            j = input('Please input the desired column number:  ');
        end
        M(i,j) = -1;
        disp(M)
        if checkWin(M) == -1
            disp('Player B wins!')
        end
    end
    n = n+1;
end
if n == 10
    disp('The game has reached a draw')
end



