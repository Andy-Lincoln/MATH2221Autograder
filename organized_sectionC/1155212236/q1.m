X = zeros(1,100);
X(1,1) = 1;
for i = 2:100
X(1,i) = X(1,i-1)/2 + log(i);
end
X(1,100)