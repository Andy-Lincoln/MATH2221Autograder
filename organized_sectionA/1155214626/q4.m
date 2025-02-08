M=zeros(3,3)
w=0;
n=1;
v=0;
while w==0 & n<=9
    if mod(n,2)==1
        display('Player A turn')
        while v==0
            v=checkValid(M,i,j);
        end
        v=0;
        n=n+1;
        M(i,j)=1
        w=checkwin(M)
    else mod(n,2)==0
        display('Player B turn')
        while v==0
            v=checkValid(M,i,j);
        end 
        v=0;
        n=n+1;
        M(i,j)=1
        w=checkwin(M)
    end
end
display('It is a draw')
            
        
