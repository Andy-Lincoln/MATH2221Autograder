function A = generateA(i,j)
A = ones(i,j);
A = A*-1;
for a = 1:i
    for b = 1:j
        if mod((a+b),3) == 0
            A(a,b) = 1 ;
        end
    end
end

