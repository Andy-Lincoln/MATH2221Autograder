M=zeros(3,3);
w=0;
n=1;
v=0;
while w==0
    for n=1:9
        if mod(n,2)==1
            disp(M)
            disp('Player A:');
            while v~=1
                i=input('Please input the desired row number:');
                j=input('Please input the desired column number:');
                v=CheckValid(M,i,j);
            end
            M(i,j)=1;
            n=n+1;
            v=0;
            w=checkWin(M);
        else mod(n,2)==0
            disp(M)
            disp('Player B:');
            while v~=1
                i=input('Please input the desired row number:');
                j=input('Please input the desired column number:');
                v=CheckValid(M,i,j);
            end
            M(i,j)=-1;
            n=n+1;
            v=0;
            w=checkWin(M);
        end
    end
end
disp(M)
if w==1
    disp('Player A wins!');
elseif w==-1
    disp('Player B wins!');
end