n = zeros(1, 1000);
for i = 1:1000
    n(i) = chutes_and_ladders()
end
figure;
histogram(n, 'Normalization', 'probability');
xlabel('Number of rounds needed');
ylabel('Chutes and Ladders')