A=@(m,n)2*ones(m,n)
for i=1:m

for j=1:n

if mod(i+j,3)==0
    A(i,j)=2
    
else A(i,j)=0
end
end
end
