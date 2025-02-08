M = zeros(3,3);
disp(M);
w =0;
n=1;
while w == 0 && n <=9 
    
    if mod(n,2)==1
        disp("Player A:")
        i = input('Please input the desird row number:  ');
    j = input('Please input the desird column number:  ');
    v = checkValid(M);
    if v ==0
        continue
    else
        M(i,j) = 1;
        disp(M);
        w = checkWin(M);
        if w == 1
            disp("PlayerA wins!")
        elseif w == -1
            disp("PlayerB wins")
        end
        n = n+1;
    end

    else
        disp("Player B:")
        i = input('Please input the desird row number:  ');
    j = input('Please input the desird column number:  ');
    v = checkValid(M);
    if v ==0
        continue
    else
        M(i,j) = -1;
        disp(M);
        w = checkWin(M);
        if w == 1
            disp("PlayerA wins!")
        elseif w == -1
            disp("PlayerB wins")
        end
        n = n+1;
    end
    end
  
end
if w == 0
    disp("The game has reached a draw.")
end
    
    