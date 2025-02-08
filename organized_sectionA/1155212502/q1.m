 x=zeros(1,100)
X(1)=1
for n=2:100
x(n)=(x(n-1)/2)+n^2
end
x(100)