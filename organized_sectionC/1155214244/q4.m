M = zeros(3,3);
w = 0;
disp(M);
n = 1;
if mod(n,2) ~= 0
    disp("Player A:");
    i = input("Please input the desired row number:  ");
    j = input("Please input the desired column number:  ");
    v = checkValid(M,i,j);
    while v ~= 1
        i = input("Please input the desired row number:  ");
        j = input("Please input the desired column number:  ");
        v = checkValid(M,i,j);
    end
    M(i,j) = 1;
    disp(M);
    w = checkWin(M);
    if w == 1
        disp("Player A wins!");
        stop;
    end
    
else
    disp("Player B:");
    i = input("Please input the desired row number:  ");
    j = input("Please input the desired column number:  ");
    v = checkValid(M,i,j);
    while v ~= 1
        i = input("Please input the desired row number:  ");
        j = input("Please input the desired column number:  ");
        v = checkValid(M,i,j);
    end
    M(i,j) = -1;
    disp(M);
    w = checkWin(M);
    if w == -1
        disp("Player B wins!");
        stop;
    end
    
 n = n + 1;
 if n == 10
     disp("The game has reached a draw");
     stop;
 end


end