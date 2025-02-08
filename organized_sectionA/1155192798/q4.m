M = zeros(3,3);
disp(M);
w = 0;
n = 1;
while w == 0 && n <= 9
    if mod(n,2) == 1
        disp('Player A:');
        element = 1;
    else
        disp('Player B:');
        element = -1;
    end
    validInput = 0;
    while ~validInput
        i = input('Please input the desired row number: ');
        j = input('Please input the desired column number: ');
        v = checkValid(M,i,j);
        if v == 1
            validInput = 1;
            M(i,j) = element;
            disp(M);
            w = checkWin(M);
            if w == 1
                disp('Player A wins!');
            elseif w == -1
                disp('Player B wins!');
            else
                n = n + 1;
            end
        end
    end
end
if w == 0
    disp('The game has reached a draw');
end