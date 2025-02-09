function [A] = generateA(m,n)
A = zeros(m,n);
for row = [1:m]
    rowA = zeros(1, n);
    for col = [1:n]
        if mod( row+col , 3) ~= 0
            rowA(col) = rowA(col) - 1;
        else
            rowA(col) = rowA(col) + 1;
        end
    end
    A(row,:) = rowA;
end

end

