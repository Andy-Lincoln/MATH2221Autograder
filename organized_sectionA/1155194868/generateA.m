function A=generateA(m,n)
A=-ones(m,n);
for i=1:1:m
    for j=1:1:n
        if mod(i+j,3)==0
         A(i,j)=1;   
        end
    end
end  
A
end