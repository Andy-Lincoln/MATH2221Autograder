M = zeros(3,3);
disp(M);
w=0;
n=1;
while w == 0 && n <= 9
 if mod(n,2) == 0
     disp('Player B');
     i = input('Please input the desired row number: ');
 j = input('Please input the desired column number: ');
 while checkValid(M) == 1
     i = input('Please input the desired row number: ');
     j = input('Please input the desired column number: ');
 end
 M(i,j) = -1;
 else
     disp('Player A');
 i = input('Please input the desired row number: ');
 j = input('Please input the desired column number: ');
 while checkValid(M) == 1
     i = input('Please input the desired row number: ');
     j = input('Please input the desired column number: ');
 end
 M(i,j) = 1;
 end
 disp(M);
 if checkWin(M) == 1
     disp('Player A win');
 elseif checkWin(M) == -1
     disp('Player B win');
     n = n+1;
 end
end

     