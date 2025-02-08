F=zeros(100,0);
F(2)=1;

for n=2:100
    F(n)=F(n-1)/2+n^2;
end
F(100)