function A = generateA(m, n)
    % Check if inputs are positive integers
    if m <= 0 || n <= 0 || floor(m) ~= m || floor(n) ~= n
        error('Inputs m and n must be positive integers.');
    end

    % Initialize the matrix A
    A = ones(m, n); % Default to 1

    % Fill the matrix based on the given condition
    for i = 1:m
        for j = 1:n
            if mod(i + j, 3) == 0
                A(i, j) = 1;
            else
                A(i, j) = -1;
            end
        end
    end
end

