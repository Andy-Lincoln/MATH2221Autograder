M=zeros(3,3);
disp(M);
w=0;
n=1;
while w==0 && n<=9 
    while w==0 && mod(n,2)==0
        disp('Player B');
        i=input('Please input the desired row number:')
        j=input('Please input the desired column number:')
       v=checkValid(M,i,j);
       n=n+1;
       while v==0
           disp('Player B');
        i=input('Please input the desired row number:')
        j=input('Please input the desired column number:')
       v=checkValid(M,i,j);
       end
       M(i,j)=-1 
       w=checkWin(M);
       if w==1
        disp('Player A wins!')
        elseif w==-1
            disp('Player B wins!')
        end
    end

    while w==0 && mod(n,2)~=0
        disp('Player A');
        i=input('Please input the desired row number:')
        j=input('Please input the desired column number:')
       v=checkValid(M,i,j);
        n=n+1;
       while v==0
           disp('Player A');
        i=input('Please input the desired row number:')
        j=input('Please input the desired column number:')
       v=checkValid(M,i,j)
       end
       M(i,j)=1;
       w=checkWin(M);
       if w==1
        disp('Player A wins!')
        elseif w==-1
        disp('Player B wins!')
        end
    end
end
    if n>9 && w==0
        disp('The game has reached a draw')
    end
    
