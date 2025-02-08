M=zeros(3)
disp(M)
w=0
n=1
i=input('Please input the desired row number: ');
j=input('Please input the desired column number: ')
v=checkValid(M,i,j)
for w=0&&n<=9
    if mod(n,2)==1
        disp("Player A:")
        while v==0
    disp('Please input the desired row number: ')
    disp('Please input the desired column number: ')
        end
        M(i,j)=1
    else
        disp("Player B:")
        while v==0
    disp('Please input the desired row number: ')
    disp('Please input the desired column number: ')
        end
        M(i,j)=-1
    end
    w=checkWin(M)
    if w=1
        disp("Player A wins!")
    else if w=-1
           disp("Player B wins!")
        else n=n+1
        end
    end
end
for w=0&&n=9
    dip("The game has reached a draw")
end
    


    