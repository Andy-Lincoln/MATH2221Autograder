M = zeros(3,3);
w = 0;
n = 1;
disp(M);
while w == 0 && n <= 9
    if mod(n,2) == 1 % player A
        disp("Player A:");
    else % player B
        disp("Player B:");
    end
    v = 0;
    while v == 0
        i = input("Please input the desired row number: ");
        j = input("Please input the desired column number: ");
        v = checkValid(M,i,j);
    end
    if mod(n,2) == 1
        M(i,j) = 1;
    else
        M(i,j) = -1;
    end
    disp(M);
    w = checkWin(M);
    n = n + 1;
end
if w == 1
    disp("Player A wins!");
elseif w == -1
    disp("Player B wins!");
else
    disp("The game has reached a draw");
end
