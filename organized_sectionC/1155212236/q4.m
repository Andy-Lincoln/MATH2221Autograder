c = 1:1000;
for i = 1:1000
    n = chutes_and_ladders();
    c(i) = n;
end
figure;
histogram(c,'Normalization','probability');
xlabel('Number of round needed');
ylabel('Probability');
title('Chutes and Ladders');