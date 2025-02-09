X=zeros(100,1);
X(1)=1;
for n=2:100
    X(n)=X(n-1)/2+sqrt(n);
end
X(100)