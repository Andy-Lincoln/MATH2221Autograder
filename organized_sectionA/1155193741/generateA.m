function[A]=generateA(m,n)
    A=zeros(m,n);
    for a=1:m
        for b=1:n
            if rem(a+b,3)==0
                A(a,b)=1;
            else 
                A(a,b)=-1;
            end
        end
    end
end
