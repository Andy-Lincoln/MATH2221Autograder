M = zeros(3);
disp(M)

w = 0;
n = 1;

while w==0 && n<=9
    
    if mod(n,2)==1
        disp('Player A''s turn:')
    else disp('Player B''s turn:')
    end
    
    i = input('Please input the desired row number: ');
    j = input('Please input the desired column number: ');
    
    v = checkValid(M,i,j);
    
    while v==0
            i = input('Please input the desired row number: ');
            j = input('Please input the desired column number: ');
            v = checkValid(M,i,j);
    end
    
    M(i,j) = 2*mod(n,2)-1;
    disp(M)
    
    w = checkWin(M);
    n = n+1;
end

if w==1
    disp('Player A wins!')
elseif w==-1
    disp('player B wins!')
else disp('The game has reached a draw')
end