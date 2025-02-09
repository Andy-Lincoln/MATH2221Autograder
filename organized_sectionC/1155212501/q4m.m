M=zeros(3,3);
disp(M)
w=0;
n=1;
while (w==0)&&(n<=9)
    if mod(n,2)~=0
        disp("Player A")
    else
        disp("Player B")
    end
    i=input('Please input the desired row :')
    j=input('Please input the desired colomun :')
    v=checkValid(M,i,j)
 while v==0
     i=input('Please input the desired row :')
    j=input('Please input the desired colomun :')
 end
 if mod(n,2)~=0
        M(i,j)=1;
    else
        M(i,j)=-1;
 end
 disp(M);
 
w=checkWin(M);
if w==1
    disp('Player A wins')
    return
elseif w==-1
    disp('Player B wins')
    return
else n=n+1
end
end
disp('The game has reached a draw')

     
     
    
    
    
    
