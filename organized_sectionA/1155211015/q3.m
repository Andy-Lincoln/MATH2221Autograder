% Initiate values
S = 0;
i = 1;
n = 1;

% Find the least n such that S >= 10
while S < 10
    S = S + 1 / i;
    i = i + 1;
    n = n + 1;
end

%Output the desired n
n