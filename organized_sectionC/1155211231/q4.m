numTrials = 1000;
roundsNeeded = zeros(1,numTrials);

for i = 1:numTrials
    roundsNeeded(i) = chutes_and_ladders();
end

figure;
histogram(roundsNeeded, 'Normalization', 'probability');
xlabel('Number of rounds needed');
ylabel('Probability');
title('Chutes and Ladders');