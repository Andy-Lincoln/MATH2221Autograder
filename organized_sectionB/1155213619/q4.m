function x =q4
M=zeros(3,3)
disp(M)
w=0
n=1
if mod(n,2)==1
    disp('Player A')
else disp('Player B')
end
i=input('Please input the desired row number: ')
j=input('Please input the desired column number: ')
 v = CheckValid(M,i,j)
if (i~=1)&&(i~=2)&&(i~=3)
    disp('Invalid i')
    v=0;
elseif (j~=1)&&(j~=2)&&(j~=3)
    disp('Invalid j')
    v=0;
elseif M(i,j)~=0
    disp('Already occupied')
    v=0;
else disp('Valid input')
            v=1;
end
disp(M)
 w == CheckWin(M)
A=sum(M,1);
B=sum(M,2);
if (A(1,1)==3)||(A(1,2)==3)||(A(1,3)==3)||(B(1,1)==3)||(B(1,2)==3)||(B(1,3)==3)
    w=1
elseif (A(1,1)==-3)||(A(1,2)==-3)||(A(1,3)==-3)||(B(1,1)==-3)||(B(1,2)==-3)||(B(1,3)==-3)
    w=-1
elseif (M(1,1)+M(2,2)+M(3,3)==3)||(M(1,3)+M(2,2)+M(1,3)==3)
    w=1;
elseif (M(1,1)+M(2,2)+M(3,3)==-3)||(M(1,3)+M(2,2)+M(1,3)==-3)
    w=-1;
else w=0;
end
if w==1
    disp('Player A wins!')
elseif w==-1
    disp('Player B wins!')
    n=n+1
else disp ('The game has reached a draw')
end