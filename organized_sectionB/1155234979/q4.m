M=zeros(3,3);w=0;n=1;
while n<=9
    if mod(n,2)==1
        disp('Player A');
    else disp('Player B');
    end
    i=input('Please input the desired row number:');
    j=input('Please input the desired column number:');
    while v=checkValid(M)~=1
         i=input('Please input the desired row number:');
    j=input('Please input the desired column number:');
    end
    
