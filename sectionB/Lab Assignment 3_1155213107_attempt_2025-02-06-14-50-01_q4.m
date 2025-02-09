function v = checkvalid(M,i,j)
if i ~= 1 & i ~= 2 & i ~= 3
    disp('Invalid i');
    v = 0;
elseif j ~= 1 & j ~= 2 & j ~= 3
    disp('Invalid j');
    v = 0;
elseif M(i,j) ~= 0
    disp('Already occupied');
    v = 0;
else
    disp('Valid Input');
    v = 1;
end
end

M = zeros(3);
disp(M)
w = 0;
n = 1;
while w == 0 & n <= 9
    if mod(n,2) == 1
        disp('Player A');
    else
        disp('Player B');
    end
    v = 0;
    while v == 0
        i = input('Please input the desired row number: ');
        j = input('Please input the desired column number: ');
        v = checkvalue(M,i,j);
    end
    if checkvalue(M,i,j) == 1
        M(i,j) = (-1)^(1+mod(n,2));
        disp(M);
        w = checkWin(M)
        if w == 1
            disp('Player A wins!');
        elseif w == -1
            disp('Player B wins!');
        else
            n = n+1;
        end
    end
    if n > 9
        disp('The game has reached a draw.');
    end
end