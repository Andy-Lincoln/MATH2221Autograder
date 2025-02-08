function A = generateA(m, n)
    % Initialize matrix A with -1s
    A = -1 * ones(m, n);
    
    % Loop through each element to apply the rule
    for i = 1:m
        for j = 1:n
            if mod(i + j, 3) == 0
                A(i, j) = 1; % Set to 1 if divisible by 3
            end
        end
    end
end