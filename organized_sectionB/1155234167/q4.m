M=zeros(3,3);
w=0;
n=1;
if w==0
    while n<=9
        if mod(n,2)=1
            disp('Player A')
        else disp('Player B')
            i=input('Please input the dedired row number: ');
            j=input('Please input the desired column number: ');
            v=checkValid(M)
            while v~=1
                i=input('Please input the dedired row number: ');
            j=input('Please input the desired column number: ');
            v=checkValid(M)
            M(i,j)=mod(n,2)
            disp(M)
            w=checkWin(M)
            end
        end
    end
end
if w==1
    disp('Player A wins!')
else if w==-1
        disp('Player B wins!')
    else disp('The game has reached a draw')
    end
end
     