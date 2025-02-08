% Initial a 3 by 3 zero matrix
M = zeros(3);

% Display the initial matrix
disp(M);

% Initial values
w = 0;
n = 1; % Turn counter

while (w == 0) && (n <= 9)
    if mod(n,2) == 1
        disp('Player A:');
        % Receive input and check the validity of the input
        v = 0;
        while (v == 0)
        i = input('Please input the desired row number: ');
        j = input('Please input the desired column number: ');
        v = checkValid(M,i,j);
        end
        M(i,j) = 1;
        disp(M)
    else
        disp('Player B:');
        % Receive input and check the validity of the input
        v = 0;
        while (v == 0)
        i = input('Please input the desired row number: ');
        j = input('Please input the desired column number: ');
        v = checkValid(M,i,j);
        end
        M(i,j) = -1;
        disp(M)
    end
    
    w = checkWin(M);
    
    if w == 1
        disp('Player A wins!')
    elseif w == -1
        disp('Player B wins!')
    else
        n = n + 1;
    end
    
    if (n > 9) && (w == 0)
        disp('The game has reached a draw');
    end
end
