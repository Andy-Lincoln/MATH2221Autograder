F = zeros(100,1);
F(1) = 1; %initial value

for n=2:100
    F(n)=F(n-1)/2+sqrt(n); %the recurrence relation
end

F(100) % the final result