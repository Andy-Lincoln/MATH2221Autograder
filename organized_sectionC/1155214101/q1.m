x = zeros(100,1)
x(1) = 1

for n = 2:100
    x(n)=x(n-1)/2+log(n)
end

x(100)