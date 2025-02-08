%Calculate x_100 using for loop 

%Initialize
x = 1;

%Iteration
for i=2:100
    x = x/2 + i^2; %given recursive formula
end

%Display
disp(x);