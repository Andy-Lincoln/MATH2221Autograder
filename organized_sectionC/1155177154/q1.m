X=1:100;
X(1)=1;
for n =2:100
    X(n)=X(n-1)/2 + log(n);
end
X(100)    