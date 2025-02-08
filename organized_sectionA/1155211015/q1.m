% Initial value
x = 1;

% Calculate x_100

for i = 2:99
    x = x / 2 + i^2;
end
x
    