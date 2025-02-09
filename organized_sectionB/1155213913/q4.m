M = zeros(3,3);
disp(M);
n = 0;
w = 0;
while w == 0 & n <= 9
    n = n + 1;
    if mod(n,2) == 1
        disp('Player A:');
        i = input('Please input the desired row number: ');
        j = input('Please input the desired column number: ');
        while checkValid(M,i,j) == 0
            disp('Player A:');
            i = input('Please input the desired row number: ');
            j = input('Please input the desired column number: ');
        end
        M(i,j) = 1;
    else
        disp('Player B:');
        i = input('Please input the desired row number: ');
        j = input('Please input the desired column number: ');
        while checkValid(M,i,j) == 0
            disp('Player B:');
            i = input('Please input the desired row number: ');
            j = input('Please input the desired column number: ');
        end
        M(i,j) = -1;
    end
    disp(M);
    w = checkWin(M);
end

if w == 1
    disp('Player A wins!');
else
    if w == -1
        disp('Player B wins!');
    else
        disp('The game has reached a draw');
    end
end
