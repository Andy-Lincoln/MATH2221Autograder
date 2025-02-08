function [A] = generateA(m,n)
%UNTITLED6 Summary of this function goes here
%   Detailed explanation goes here
A = zeros(m,n);
for i = 1:m
    for j = 1:n
        if mod(i+j,3)==0
            A(i,j)=1;
        else
            A(i,j)=-1;
        end
    end
end

end

