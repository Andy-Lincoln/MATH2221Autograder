
x = 1; % Initial value x1

for n = 2:100
    x = (x / 2) + log(n);
end

% Display the final result
fprintf('The value of x100 is: %.6f\n', x);
