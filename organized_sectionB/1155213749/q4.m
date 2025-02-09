M=zeros(3);
disp(M)
w=0;
n=1;
while (w==0&n<=9)
    if mod(n,2)==1
        disp('player A')
    i=input('Please input the desired row number: ')
    j=input('Please input the desired column number: ')
    v=checkValid(M,i,j)
        if v==1
            M(i,j)=1;
            disp(M)
        else
            disp('provide another input')
        end
        
    elseif mod(n,2)==0
        disp('player B')
    i=input('Please input the desired row number: ')
    j=input('Please input the desired column number: ')
    v=checkValid(M,i,j)
        if v==1
            M(i,j)=-1;
            disp(M)
        else
            disp('provide another input')
        end
    end
    w=checkWin(M)
    if w==1
        disp('Player A wins!')
        break
    elseif w==-1
        disp('Player B wins!')
        break
    else
        n=n+1
    end
end
if  (n>9)
    disp('The game has reached a draw')
    break
end


