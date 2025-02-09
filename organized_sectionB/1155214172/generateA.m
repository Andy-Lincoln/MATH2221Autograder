function A=generateA(m,n)
A=zeros(m,n);
for x=1:m
    for y=1:n
        if mod(x+y,3)==0
            A(x,y)=1;
        else 
            A(x,y)=-1;
        
        end
    end
end 
