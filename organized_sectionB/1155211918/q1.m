X=zeros(100,2)
X(1)=1;
for n=2:100
     X(n)=X(n-1)/2+n^(1/2);
end
