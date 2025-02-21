num_trials = 1000;  % Number of simulations
results = zeros(1, num_trials); % Preallocate for efficiency

% Run 1000 trials of the game
for i = 1:num_trials
    results(i) = chutes_and_ladders();
end

% Create histogram with probability normalization
figure;
histogram(results, 'Normalization', 'probability');

% Label axes and add title
xlabel('Number of rounds needed');
ylabel('Probability');
title('Chutes and Ladders');
