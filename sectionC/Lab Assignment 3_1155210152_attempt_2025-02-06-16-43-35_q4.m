M=zeros(3);
disp(M)
w=0;
n=1;
while n<=9
    if mod(n,2)==1;
        v=0;
        while v==0
            disp('Player A:')
            i = input('Please input the desired row number: ');
            j = input('Please input the desired column number: ');
            v=checkValid(M,i,j);
        end
        M(i,j)=1;
        disp(M)
        w = checkWin(M);
        if w~=0
            disp('Player A wins!');
            return
        end
        n=n+1;
    elseif mod(n,2)==0;
        v=0;
        while v==0
            disp('Player B:')
            i = input('Please input the desired row number: ');
            j = input('Please input the desired column number: ');
            v=checkValid(M,i,j);
        end
        M(i,j)=-1;
        disp(M)
        w = checkWin(M);
        if w~=0
            disp('Player B wins!');
            return
        end
        n=n+1;
    end
end
disp('The game has reached a draw')
    