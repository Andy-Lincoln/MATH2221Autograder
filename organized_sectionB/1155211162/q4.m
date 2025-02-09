% initialization
M = zeros(3,3);
disp(M);
w = 0;
n = 1;
gameEnd = 0
% game flow
while gameEnd == 0
    % turn announcement
    if mod(n,2) == 1
        disp('Player A:');
    else
        disp('Player B:');
    end
    
    % Choose position
    v = 0;
    while v == 0
    i = input('Please input the desired row number: ');
    j = input('Please input the desired coloum number: ');
    
    % check validity
    v = checkValid(M,i,j);
    end
    
    % update board
    if mod(n,2) == 1
        M(i,j) = 1;
    else
        M(i,j) = -1;
    end
    disp(M);
    
    % check winning
    w = checkWin(M);
    gameEnd = ((w ~= 0) || (sum(M == zeros(3,3), 'all') == 0));
    n = n + 1;
end

% announce result
if w == 1
    disp('Player A wins!');
else if w == -1
      disp('Player B wins!');
    else 
        disp('The game has reached a draw');
    end
end