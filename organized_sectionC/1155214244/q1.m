s = 1;
n = 2;
for i = 2:100
    s = (s)/2 + log(n);
    n = n + 1;
end
s
