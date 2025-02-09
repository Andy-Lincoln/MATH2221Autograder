M=zeros(3,3);
disp(M);
w=0;
n=1;
while w==0 && n<=9
    if mod(n,2)==1
        display("Player A:");
        v=0;
        while v~=1
            i=input("Please input the desired row number: ");
            j=input("Please input the desired column number: ");
            v=checkValid(M,i,j);
        end
        M(i,j)=1;
    else
        display("Player B:");
        [i,j,tr]=think(M,-1);
        if i==0
            for p=1:3
                for q=1:3
                    if M(p,q)==0
                        i=p;
                        j=q;
                        return
                    end
                end
            end
        end
        display("computer desired row number: "+string(i));
        display("computer desired column number: "+string(j));
        M(i,j)=-1;
    end
    disp(M);
    w=checkWin(M);
    if w==1
        display("Player A wins!");
    elseif w==-1
        display("Player B wins!");
    else
        n=n+1;
    end
end
if w==0
    display("The game has reached a draw");
end