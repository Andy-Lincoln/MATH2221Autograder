M = zeros(3, 3);
w = 0;
n = 1;
disp(M)
while w == 0 && n <= 9
    if (mod(n,2)==1)
        disp('Player A:');
        i = input('Please input the desired row number: ');
        j = input('Please input the desired column number: ');
        v = checkValid(M, i, j);
        if v == 0
            i = input('Please input the desired row number: ');
            j = input('Please input the desired column number: ');
        else 
            M(i, j) = M(i, j)+1
        end
        disp(M);
        w = checkWin(M);
        if w == 1
            disp('Player A wins!')
        end
    else
        disp('Player B:')
    end
    i = input('Please input the desired row number: ');
    j = input('Please input the desired column number: ');
    v = checkValid(M, i, j);
    if v == 0
        i = input('Please input the desired row number: ');
        j = input('Please input the desired column number: ');
    else 
        M(i, j) = M(i, j)+1