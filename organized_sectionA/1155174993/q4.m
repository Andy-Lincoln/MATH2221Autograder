M = zeors(3);
w = 0;
n = 1;
disp(M)
while (w = 0) & (n<=9)
    if mod(n,2) ~= 0
        disp('Player A')
    else 
        disp('Player B')
    end
    i = input('Please input the desired row number: ');
    j = input('Please input the desired column number: ');
    v = checkValid(M);
    disp(M)
    w = checkWin(M);
    n = n + 1;
end