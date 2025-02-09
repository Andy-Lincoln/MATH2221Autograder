X = zeros(100,1);
X(1) = 0;
for i = 2:100
    X(i) = X(i-1)/2 + sqrt(i);
end

X(100)