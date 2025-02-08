%Tic-tac-toe
%1,2. Initialize
M = zeros(3,3);
disp(M);

w = 0; %win
n = 1; %turn counter

%3. Game
while w == 0 && n <= 9 %game not finished
    %a. Decide player
    n_player = 0; %%%%%%%%%%%%%%%%% not required by qus, represents the number used by each player
    if mod(n,2) == 1 % n is odd
        disp('Player A:');
        n_player = 1;
    else
        disp('Player B:'); 
        n_player = -1;
    end
    
    v = 0;
    while v == 0 %invalid input
        %b. Decide entry
        i = input('Please input the desired row number: ');
        j = input('Please input the desired column number: ');
    
        %c. Check validity of input
        v = checkValid(M,i,j); %update v
    end %if v = 1, escape; otherwise, continue indefinitely
    
    %d. After valid input, update and display M
    M(i,j) = n_player;
    disp(M);
    
    %e,f. Decide if a player has won
    w = checkWin(M);
    %disp(w);
    if w == 1
        disp('Player A wins!');
        break
    elseif w == -1
        disp('Player B wins!');
        break
    else
        %g. If no player wins, update counter and continue
        n = n + 1;
    end
end

%4.Game finished and reached a draw
if w == 0 && n == 10
    disp('The game has reached a draw.');
end