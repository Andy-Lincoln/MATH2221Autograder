M= zeros(3,3);
w=0;
n=1;
while w==0 & n<=9
    if mod(n,2)==1
        disp('Player A:')
    else 
        disp('Player B:')
    end
    i= input('Please input the desired row number: ');
    j= input('Please input the desired column number: ');
    while checkValid(M,i,j)==0
        i= input('Please input the desired row number: ');
        j= input('Please input the desired column number: ');
    end
    if mod(n,2)==1
        M(i,j)=1;
    else 
        M(i,j)=-1;
    end
    if checkWin(M) == 1
        disp('Player A wins!')
        break;
    elseif checkWin(M) == -1
        disp('Player B wins!')
        break;
    else
        n=n+1;
    end
end
    