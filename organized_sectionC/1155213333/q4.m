M = zeros(3,3);
disp(M);
w = 0;
n = 1;
k=0;
while n <= 9 & w == 0
    if  mod(n,2)==1
        disp("Player A")
        k = 1
    else 
        disp("Player B")
        k = -1
    end;
v = 0;
while v == 0
   i = input("Please input the desired row number: ");
   j = input("Please input the desired column number: ");
   v = checkValid(M,i,j);
end;
M(i,j) = k;
w = checkWin(M);
n = n+1;
end;
if n == 10
    display("The game has reached a draw.")
else
switch w
    case 1
        disp("Player A wins");
    case -1
        disp("Player B wins");
end;
end



   