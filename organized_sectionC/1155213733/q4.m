trials = 1000;
rounds = zeros(1,trials);
for i=1:trials
    rounds(i)=chutes_and_ladders();
end
figure;
histogram(rounds);
xlabel('Number of rounds needed')
ylabel('Probability')
title('Chutes and Ladders')