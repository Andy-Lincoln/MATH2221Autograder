M=[0 0 0;0 0 0;0 0 0];
disp(M)
w=0;
n=1;
while w==0&&n<=9
if mod(n,2)==1 
    disp('Player A');
    i=input('Please input the desired row number:');
    j=input('Please input the desired column number:');
    v=checkValid(M,i,j);

    while v==0
        i=input('Please input the desired row number:');
           j=input('Please input the desired column number:');
           v=checkValid(M,i,j);
    end
    M(i,j)=1;
    disp(M)
    w=checkWin(M);
    n=n+1;
   
elseif mod(n,2)==0
    disp('Player B');
    i=input('Please input the desired row number:');
    j=input('Please input the desired column number:');
    v=checkValid(M,i,j);
     while v==0
        i=input('Please input the desired row number:');
           j=input('Please input the desired column number:');
           v=checkValid(M,i,j);
     end 
     M(i,j)=-1;
     disp(M)
     w=checkWin(M);
     n=n+1;
end
if w==1
    disp('Player A wins')
elseif w==-1
    disp('Player B wins')
else 
    disp('The game has reach a draw') 
end
end
