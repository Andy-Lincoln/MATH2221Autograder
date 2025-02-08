M=zeros(3,3);
w=0;n=1;
while w==0 & n<=9
    if mod(n,2)==1
        disp("Player A:")
        i=input('Please input the desired row number:');
        j=input('Please input the desired column number:');
        v=checkValid(M,i,j);
        while v~=1
            i=input('Please input the desired row number:');
            j=input('Please input the desired column number:');
            v=checkValid(M,i,j);
        end
        M(i,j)=1;
        w=checkWin(M);
        if w==1
            disp("Player A wins!")
        end
        n=n+1;
    else
        disp("Player B:")
        i=input('Please input the desired row number:');
        j=input('Please input the desired column number:');
        v=checkValid(M,i,j);
        while v~=1
            i=input('Please input the desired row number:');
            j=input('Please input the desired column number:');
            v=checkValid(M,i,j);
        end
        M(i,j)=-1;
        w=checkWin(M);
        if w==-1
            disp("Player B wins!")
        end
        n=n+1;
    end
end
if w==0
    disp("The game has reached a draw")
end
    
    

