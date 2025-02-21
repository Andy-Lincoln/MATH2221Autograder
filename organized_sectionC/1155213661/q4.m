num_trials = 1000;
results = zeros(num_trials, 1);

for i = 1:num_trials
    results(i) = chutes_and_ladders();
end

%normalization
histogram(results, 'Normalization', 'probability');

xlabel('Number of round needed');
ylabel('Probability');
title('Chutes and Ladders');