function [m,n] = generateA(m,n)
A =[]
for i = 1:m
    for j = 1:n
        if rem(i+j,3)==0
            A = [A,1]
        else A = [A,-1]
        end
    end
end
A = reshape(A,n,m)'
end
