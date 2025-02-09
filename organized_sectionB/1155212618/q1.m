x = 1;
y = 1;
for i = 2:100
    y = x/2 + sqrt(i);
    x = y;
end
y