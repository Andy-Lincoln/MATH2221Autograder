M=zeros(3,3);
disp(M);
w=0;
n=1;
v=0;
while w==0 && n<=9
    if mod(n,2)==1
       disp('PlayerA')
       i = input('Please input the desired row number:  ');
       j = input('Please input the desired column number:  ');
       v=checkVaild(M,i,j)
       while v==0
        i = input('Please input the desired row number:  ');
        j = input('Please input the desired column number:  ');
        v=checkVaild(M,i,j)
       end
       M(i,j)=1; 
       n=n+1;
       disp(M);
       w=checkWin(M);
       if w==1
           disp('PlayerA wins');
           break;
       end
    else 
        disp('PlayerB')
       i = input('Please input the desired row number:  ');
       j = input('Please input the desired column number:  ');
       v=checkVaild(M,i,j)
       while v==0
        i = input('Please input the desired row number:  ');
        j = input('Please input the desired column number:  ');
        v=checkVaild(M,i,j)
       end
       M(i,j)=-1; 
       n=n+1;
       disp(M);
       w=checkWin(M);
       if w==-1
           disp('PlayerB wins');
           break;
       end 
    end 
end 
if n==9 
        disp('The game has reached a draw')
        break;