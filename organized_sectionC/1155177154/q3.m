S=1:n;
n=1;
S(1)=1;
while S(n)<10
    n=n+1;
    S(n)=S(n-1)+1/n;
end
disp(n)