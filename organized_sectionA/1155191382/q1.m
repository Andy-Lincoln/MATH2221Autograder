x=zeros(100,1);
x(1)=1;
for i=2:100
    x(i)=(x(i-1)/2)+i^2;
end
x(100)