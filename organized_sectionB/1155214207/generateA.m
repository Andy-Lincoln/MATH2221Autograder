function A = generateA(m, n)
    A = -1*ones(m, n)
    for i = 1:3:m
        for j = 2:3:n
            A(i,j) = 1
        end
    end
    for i = 3:3:m
        for j = 3:3:n
            A(i,j) = 1
        end
    end
    for i = 2:3:m
        for j = 1:3:n
            A(i,j) = 1
        end
    end
    A
end
    