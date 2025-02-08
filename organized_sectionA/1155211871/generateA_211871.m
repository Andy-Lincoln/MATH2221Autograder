function A = generateA_211871(m,n)
A=matrix(m,n);

if mod(m+n,3)==1
    A(m,n)=1;
else A(m,n)=-1;
end