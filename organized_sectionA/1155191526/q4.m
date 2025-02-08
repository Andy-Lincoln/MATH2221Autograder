M=zeros(3)
disp(M)
w=0
n=1
while n<=9&checkWin(M)==0
if mod(n,2)==1
    disp('Player A:')
   disp('please input the desired row number:')
   disp('please input the desired column number:')
    i=input('please input the desired row number:')
    j=input('please input the desired column number:')
   if checkValid(M,i,j)==0
         disp('please input the desired row number:')
   disp('please input the desired column number:')
    i=input('please input the desired row number:')
    j=input('please input the desired column number:')
   else M(i,j)=1
       disp(M)
       n=n+1
   end
       else disp('Player B:')
            disp('please input the desired row number:')
   disp('please input the desired column number:')
    i=input('please input the desired row number:')
    j=input('please input the desired column number:')
   if checkValid(M,i,j)==0
         disp('please input the desired row number:')
   disp('please input the desired column number:')
    i=input('please input the desired row number:')
    j=input('please input the desired column number:')
   else M(i,j)=-1
       disp(M)
       n=n+1
   end
   end
   end
 if  checkWin(M)==1
     disp('Player A wins')
 elseif checkWin(M)==-1
       disp('Player B wins')
 else disp('the game has reached a draw')
 end
       
       
    