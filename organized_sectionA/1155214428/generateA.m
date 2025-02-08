function A = generateA(m,n)
for i=1:m
    for j=1:n
        if mod(i+j,3)==0
            A(i,j)= 1;
        else A(i,j)=-1
        end
    end
end
