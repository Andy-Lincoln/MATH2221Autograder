M=zeros(3);
disp(M)
w=0;n=1;
while(w==0 &&n<=9)
    if mod(n,2)==1
        disp('Player A')
        a=1;
    else
        disp('Player B')
        a=-1;
    end
    i=input('Please input the desired row number:  ');
    j=input('Please input the desired column number:  ');
    v=checkValid(M);
    if v==0
        continue;
    else
        M(i,j)=a;
        disp(M);
    end
    w=checkWin(M);
    if w==1
        disp('Player A wins');
        break;
    elseif w==-1
        disp('Player B wins');
        break;
    end
    n=n+1;
end

