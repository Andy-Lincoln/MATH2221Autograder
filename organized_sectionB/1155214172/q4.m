M=zeros(3,3);
disp(M);
w=0;
n=1;
while (w==0&n<=9)
    if mod(n,2)==1
        disp('Player A');
    i=input('Please input the desired row number: ');
    j=input('Please input the desired column number: ');
    checkValid(M,i,j);
    while(checkValid(M,i,j)==0)
    i=input('Please input the desired row number: ');
    j=input('Please input the desired column number: ');
    end
    M(i,j)=1
    elseif mod(n,2)==0
        disp('Player B');
    i=input('Please input the desired row number: ');
    j=input('Please input the desired column number: ');
    checkValid(M,i,j)
    while(checkValid(M,i,j)==0)
    i=input('Please input the desired row number: ');
    j=input('Please input the desired column number: ');
    end
    M(i,j)=-1
    end
n=n+1;
w=checkWin(M);
end
if w==1
    disp('Player A wins!')
elseif w==-1
    disp('Player B wins!')
elseif (w==0&n==9)
    disp('The game has reached a draw')
end
