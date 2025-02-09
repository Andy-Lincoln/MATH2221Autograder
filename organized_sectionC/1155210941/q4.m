disp(M)
w=0;
n=1;
while(w==0)&&(n<=9)
    if mod(n,2)==1
        disp('Player A')
    else
        disp('Player B')
    end
    i=input('please input the desired row number:');
    j=input('please input the desired column number:');
    v=checkValid(M,i,j)
    while v==0
        i=input('please input the desired row number:');
        j=input('please input the desired column number:');
        v=checkValid(M,i,j)
    end
    if mod(n,2)==1
        M(i,j)=1
    else
        M(i,j)=-1
    end
    disp(M)
    w=checkWin(M)
    if w==1
        disp('Player A wins!')
    elseif w==-1
        disp('Player B wins!')
    else
        n=n+1
    end
    disp(M)
    if n>9
        disp('The game has reached a draw')
    end
end