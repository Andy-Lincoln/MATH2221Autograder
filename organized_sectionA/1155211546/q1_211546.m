x=[1];
for n=2:100
    s=x(n-1)/2+n^2;
    x=[x,s];
end
x(100)