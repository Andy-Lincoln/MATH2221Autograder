w=0;
n=1;
v=0;
M=zeros(3,3);
disp(M);
while w==0 && n <=9
    if(mod(n,2)==1)
        disp('Player A');
    else
        disp('Player B');
    end
   while v ==0
         i=input('Please input the desired row number: ');
         j=input('Please input the desired colume number: ');
         v = checkValid(M,i,j);
   end
   if(mod(n,2)==1)
       M(i,j)=1;
   else
       M(i,j)=-1;
   end
   disp(M);
   v = checkWin(M);
   if w==1
       disp('Player A wins!');
   elseif w==-1
       disp('Player B wins!');
   end
   n=n+1;
end
     if w==0
         disp('The game has reached a draw');
     end
    
        