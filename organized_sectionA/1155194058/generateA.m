%Function to generate a matrix of given size and rule
function A = generateA(m,n)
    A = ones(m,n)*(-1); %initialize to -1
    %Alteration: Iterate over each element
    for i=1:m
        for j=1:n
            if mod(i+j,3) == 0
                A(i,j) = 1;
            end
        end
    end
end