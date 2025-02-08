M=zeros(3,3);
disp(M);
w=0;
n=1;
while w==0&&n<=9
    if mod(n,2)==1
        disp('Player A:');
    else
         disp('Player B:');
    end
    while v==0
    i=imput('Please imput the desired row number: ');
    j=imput('Please imput the desired column number: ');
    v=cheakValid(M,i,j);
    end
    if mod(n,2)==1
        M(i,j)=1;
        disp(M);
    elseif mod(n,2)==0
        M(i,j)=-1;
        disp(M);
    end
     w=cheakwin(M);
     if w==1
         disp('Player A wins!');
     elseif w==-1
         disp('Player B wins!');
     end
     n=n+1;
end
if n==10
    disp('The game has reached a draw');
end
    