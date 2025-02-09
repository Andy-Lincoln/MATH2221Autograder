x(1)=1;
for n = 2:100
    x(n) = x(n-1)/2 + sqrt(n)
end

x_100 = x(100);
disp(x_100)