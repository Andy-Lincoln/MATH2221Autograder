F=zeros(100,1);
F(1)=1;

for n=2:100
    F(n)=F(n-1)/2+(n)^2;
end

F(100)