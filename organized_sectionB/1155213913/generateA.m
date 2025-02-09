function A=generateA(m,n)
    A = zeros(m,n);
    for i = 1:m
        for j = 1:n
            A(i,j) = div3(i+j);
        end
    end
end

function y=div3(x)
    if mod(x,3) == 0
        y = 1;
    else
        y = -1;
    end
end