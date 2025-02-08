M=zeros(3);
disp(M);
w = 0;
n = 1;
while checkWin(M)==0 && n<=9 
    if rem(n,2)~=0
        disp('PlayerA: ');
    else 
        disp('PlayerB: ');
    end
        i = input('Please input the desired row number: ');
        j = input('Please input the desired column number: ');
    while checkValid(M,i,j)==0
        i = input('Please input the desired row number: ');
        j = input('Please input the desired column number: ');
    end
    if rem(n,2)~=0
        M(i,j) = 1;
    else
        M(i,j) = -1;
    end
    n = n+1;
    disp(M);
end
if checkWin(M)==1
    disp('PlayerA wins!');
elseif checkWin(M)==-1
    disp('PlayerB wins!');
else 
    disp('The game has reached a draw.');
end
    
        
    
        