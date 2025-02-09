M = zeros(3,3)
disp(M)
w = 0
n = 1
while w == 0 && n <= 9
    isOdd = mod(n,2) == 1
    if(isOdd)
        disp("Player A")
    else
        disp("Player B")
    end
    %check valid
    i = input('Please input the desired row number: ')
    j = input('Please input the desired column number: ')
    while checkValid(M,i,j) ~= 1
        i = input('Please input the desired row number: ')
        j = input('Please input the desired column number: ')
    end
    %modify entry
    if(isOdd)
        M(i,j) = 1
        disp(M)
    else
        M(i,j) = -1
        disp(M)
    end
    %check win
    if checkWin(M) == 1
        disp("Player A wins!")
        w = 1
        break
    elseif checkWin(M) == -1
        disp("Player B wins!")
        w = 1
        break
    else
        n = n + 1
    end
end
if n == 10
    disp("The game has reached a draw")
end