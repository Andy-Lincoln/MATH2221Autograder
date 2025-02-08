i(1)=1
n=1
s=1
while s<10
    n=n+1;
    i(n)=1/n;
    s=s+i(n);
end
n
M=[1,1,1;0,1,-1;-1,0,-1];
w=checkWin(M)