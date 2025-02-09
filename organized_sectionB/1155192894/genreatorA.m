function A = generatorA(m,n)
A = zeros(m,n)
for i =1:m
    for j=1:n
        if 0==mod(i+j,3)
            A(i,j)=1
        else A(i,j)=-1
        end 
    end 
end 