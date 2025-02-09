M = zeros(3,3);
disp(M);
w = 0;
n = 1;
while w == 0 && n <= 9
    if mod(n,2) == 1
        disp("Player A:");
    else
        disp("Player B:");
    end
    i = input('please input the desired row number: ');
    j = input('please input the desired column number: ');
    while checkValid(M,i,j) == 0
        i = input('please input the desired row number: ');
        j = input('please input the desired column number: ');
    end
    M(i,j) = mod(n,2)*2-1;
    disp(M);
    w = checkWin(M);
    if w == 1
        disp("Player A wins!");
    elseif w == -1
        disp("Player B wins!");
    elseif n == 9
        disp("The game has reached a draw");
    end
    n = n+1;
end
        
    