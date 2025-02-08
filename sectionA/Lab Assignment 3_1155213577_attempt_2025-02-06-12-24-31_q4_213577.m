M = zeros(3);
disp(M)
w = 0;
n =1;
while n > 9 && w =0
    if mod(n,2)==1
        disp("Player A")
        i = input("Please input the desired row number: ");
        j = input("Please input the desired colum number: ");
        v = checkValid(M);
        while v = 0
            disp("Player A")
        i = input("Please input the desired row number: ");
        j = input("Please input the desired colum number: ");
        v = checkValid(M);
        end
        M(i,j) = 1;
        disp(M)
        w = checkWin(M)
    else
        disp("Player B")
        i = input("Please input the desired row number: ");
        j = input("Please input the desired colum number: ");
         while v = 0
            disp("Player A")
        i = input("Please input the desired row number: ");
        j = input("Please input the desired colum number: ");
        v = checkValid(M);
        end
        M(i,j) = 1;
        disp(M)
        w = checkWin(M)
    end
    n = n+1
    end
    if w == 1
        disp("Player A wins")
    elseif w == -1
        disp("Player B wins")
    else w == 0
        disp('The game has reached a draw')
