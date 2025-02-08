% Initialize variables
S_n = 0; % This will hold the sum
n = 0;   % This will count the terms

% Loop until the sum is at least 10
while S_n < 10
    n = n + 1; % Increment n
    S_n = S_n + 1/n; % Update the sum
end

% Display the result
disp(['The smallest n such that S_n >= 10 is: ', num2str(n)]);