Y=ones(1000,1);
for n=1:1000
Y(n,1)=chutes_and_ladders();
end
figure;
histogram(Y,'Normalization', 'Probability');
xlabel('Number of rounds needed');
ylabel('Probability');
title('Chutes and Ladders');
