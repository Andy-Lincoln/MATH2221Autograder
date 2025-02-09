M=zeros(3,3); w=0; n=1; v=0;
disp(M);
while n<=9
    if mod(n,2)==1
        disp("Player A:");
        while v==0
            i = input("Please input the desired row number: ");
            j = input("Please input the desired column number: ");
            v = checkValid(M,i,j);
        end
        M(i,j)=1;
        v=0;
    else 
        disp("Player B:");
        while v==0
            i = input("Please input the desired row number: ");
            j = input("Please input the desired column number: ");
            v = checkValid(M,i,j);
        end
        M(i,j)=-1;
        v=0;
    end
    disp(M);
    w = checkWin(M);
    if w==1
        disp("Player A wins!");
        n=10;
    elseif w==-1
        disp("Player B wins!");
        n=10;
    end
    n=n+1;
end
disp("The game has reached a draw");
    
