function A = generateA(m,n)
A=zeros(m,n);
a=1:m;
b=1:n;
if mod(a+b,3)==1
    A(a,b)=1;
else
    A(a,b)=-1;
end