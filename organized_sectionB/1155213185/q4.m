function q4
M=zeros(3,3);
disp(M);
w=0;
n=1;

while (w==0) && (n<=9)
    if mod(n,2)==1
        disp('Player A:');
    elseif mod(n,2)==0
        disp('Player B:');
    end
    
    i=input('Please input the desired row number: ');
    j=input('Please input the desired column number: ');
    
    while checkValid(M,i,j)==0
        i=input('Please input the desired row number: ');
        j=input('Please input the desired column number: ');
    end
    
    if mod(n,2)==1
        M(i,j)=1;
    elseif mod(n,2)==0
        M(i,j)=-1;
    end
    disp(M);
    
    w=checkWin(M);
    if w==1
        disp('Player A wins!');
        n=n+1;
    elseif w == -1 
        dips('Player B wins!');
        n=n+1;
    else
        n=n+1;
    end
end
if (n==9) && (w==0)
    disp('The game has reached a draw');
end
end