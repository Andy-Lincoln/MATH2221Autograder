function A=generateA(m,n)
if mod(m+n,3)==0
    A(m,n)=1;
else
    A(m,n)=-1;
end