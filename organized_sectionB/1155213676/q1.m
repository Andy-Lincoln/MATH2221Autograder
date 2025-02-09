F=zeros(100,1);
F(1)=1;

for n=2:100
    F(n)= (1/2)*F(n-1)+sqrt(n);
end
F(100)
