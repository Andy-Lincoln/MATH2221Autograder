Sn = 0; % Initialize the sum
n = 0;  % Start with n = 0

while Sn < 10
    n = n + 1;       % Increment n
    Sn = Sn + 1/n;   % Update sum
end

% Display the result
fprintf('The smallest n such that S_n >= 10 is: %d\n', n);
