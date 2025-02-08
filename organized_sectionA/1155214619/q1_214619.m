% q1.m
% Initialize
x(1)=1; x_1 = 1
%Calculate x_n values
for n = 2:100
    x(n)=x(n-1)/2 + n^2;
end
% Display the value of x_100
disp(['x_100 = ', num2str(x(100))]);