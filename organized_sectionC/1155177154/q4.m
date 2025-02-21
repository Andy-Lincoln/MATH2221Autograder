n=ones(1,100);
for i=1:1000
    n(i)=chutes_and_ladders();
end
figure;
histogram(n,'Normalization','Probability');
xlabel('Number of rounds needed')
ylabel('Probability')
title('Chures and Ladders')