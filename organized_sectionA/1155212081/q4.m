M=zeros(3);
disp(M);
w=0;
n=1;
while w==0&n<=9
    if mod(n,2)==1
        disp('Player A');
    else
        disp('Player B');
    end
    i = input('Please input the desired row number');
    j = input('Please input the desired column number');
    
    if i>3
    disp('Invalid i');
    v=0;
elseif j>3
    disp('Invalid j');
    v=0;
elseif M(i,j)==1
    disp('Already occupied');
    v=0;
elseif M(i,j)==-1
    disp('Already occupied');
    v=0;
else 
    disp('Valid input');
    v=1;
end

v
if sum(M,1)==3
    w=1;
elseif sum(M,2)==3
    w=1;
elseif trace(M)==3
    w=1;
elseif M(1,3)+M(2,2)+M(3,1)==3
    w=1;
elseif sum(M,1)==-3
    w=-1;
elseif sum(M,2)==-3
    w=-1;
elseif trace(M)==-3
    w=-1;
elseif M(1,3)+M(2,2)+M(3,1)==-3
    w=-1;
else w=0;
    
end
    w

if w==1
    disp('Player A wins');
elseif w==-1
    disp('Player B wins');
else n=n+1
end
end
 disp('The game has reached a draw');


