M=zeros(3);
disp(M);
w=0;
n=1;
while(w==0&&n<=9)
    if mod(n,2)==1
        disp("Player A");
        i=input('PLease input the desired row number: ');
        j=input('PLease input the desired row number: ');
        v=checkVaild(M,i,j);
        while v==0
        i=input('PLease input the desired row number: ');
        j=input('PLease input the desired row number: ');
        v=checkVaild(M,i,j);
        end
M(i,j)=1;
disp(M)
w=checkWin(M);
n=n+1;
 
elseif mod(n,2)==0
        disp("Player B");
        i=input('PLease input the desired row number: ');
        j=input('PLease input the desired row number: ');
        checkVaild(M,i,j);
        while v==0
        i=input('PLease input the desired row number: ');
        j=input('PLease input the desired row number: ');
        v=checkVaild(M,i,j);
        end
M(i,j)=-1;
disp(M)
w=checkWin(M);
n=n+1;
    end
end  
       