v=ones(1,100);
for n=1:1000
    v(n)=chutes_and_ladders();
end
figure;
histogram(v,'Normalization','Probability');
xlabel('Number of rounds needed')
ylabel('Probability')
title('Chutes and Ladders')


    