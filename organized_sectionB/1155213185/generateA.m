function A = generateA(m,n)
for i=1:m
    for j=1:n
        if mod(i+j, 3)==0
            s(i,j)=1
        else
            s(i,j)=-1
        end
    end
end