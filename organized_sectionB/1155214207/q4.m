M = zeros(3);
w = 0;
n = 1;
disp(M);

while w == 0 && n <= 9
    v = 0;
    while v == 0
      if mod(n,2) == 1
          disp("Player A");
          k = 1;
      else 
          disp("Player B")
          k = -1;
      end
      i = input('Please input the desired row number: ');
      j = input('Please input the desired column number: ');
      v = checkValid(M, i, j);
      if v == 0
        disp("Please provide another input");
      end
    end
    M(i, j) = k;
    w = checkWin(M);
    if w == 1
        disp("Player A wins!");
    elseif w == -1
        disp("Player B wins!");
    end
    disp(M);
    n = n + 1;
end

if w == 0
    disp("The game has reached a draw");
end
    


