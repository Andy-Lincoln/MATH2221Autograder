function A = generateA(m,n)
    M = zeros(m,n)
    for i = 1:m
        for j = 1:n
            if mod(i+j, 3) == 0
                M(i,j) = 1
            else
                M(i,j) = -1
            end
        end
    end
    A = M
end
