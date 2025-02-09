F=[1,1];
n=1;

while F(n)<=10
    n=n+1;
    F(n)= F(n-1)+ (1/n);
end
n