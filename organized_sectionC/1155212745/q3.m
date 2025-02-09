F=[1];
n=1;
while F(n)<10
    n=n+1;
    s=F(n-1)+1/n;
    F=[F,s];
end
n