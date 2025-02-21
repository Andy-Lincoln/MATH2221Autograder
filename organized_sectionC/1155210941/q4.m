A=ones(1,1000)
for n=1:1000
    A(n)=chutes_and_ladders()
end
figure;
histogram(A,'Normalization','Probability')
xlabel('Number of records needed')
ylabel('Probability')
title('Chutes and Ladders')