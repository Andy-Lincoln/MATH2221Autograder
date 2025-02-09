M=zeros(3);
w=0;
n=1;
while n<10 and w=0
    if mod(n,2)=1
    disp('Player A')
    @i=input('Please input the desired row number: ')
    @j=input('Please input the desired column number: ')
    v=checkValid(M)
    switch v
        case 0
            @i=input('Please input the desired row number: ')
            @j=input('Please input the desired column number: ')
        case 1
          M=M+M(i,j)
          disp(M)
          if w=checkWin(M)==1
              disp('Player A wins!')
          else
              n=n+1;
          end
    end
else
    disp('Player B')
    @i=input('Please input the desired row number: ')
    @j=input('Please input the desired column number: ')
    v=checkValid(M)
    switch v
        case 0
            @i=input('Please input the desired row number: ')
            @j=input('Please input the desired column number: ')
        case 1
          M=M+M(i,j)
          disp(M)
          if w=checkWin(M)==-1
              disp('Player B wins!')
          else
              n=n+1;
          end
    end
end
end
disp('The game has reached a draw')
