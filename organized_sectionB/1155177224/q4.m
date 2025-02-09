M = zeros(3,3);
disp(M)
w = 0;
n = 1;

while (w == 0 && n <= 9)

    if (mod(n,2) == 1)
        disp('Player A:');
    else
        disp('Player B:');
        i = input('Please input the desired row number: ');
        j = input('Please input the desired column number: ');
    end

    v = checkValid(M,i,j);
    while(v ~= 0)
    if(mod(n,2) == 1)
        M(i,j) = 1;
    else 
        M(i,j) = -1;
    disp(M);
    if(checkWin(M) == 1)
        disp('Player A wins!');
	    w = w+1;
    elseif(checkWin(M) == -1)
        disp('Player B wins!');
	    w = w+1;
    else 
        n = n+1;
    end
    end
end
   disp('The game has reached a draw');
end
  
