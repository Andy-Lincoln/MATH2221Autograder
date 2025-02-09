x = [1];

for i=2:100
    x = [x 0];
    x(i) = x(i-1)/2+sqrt(i);
end

x(100)