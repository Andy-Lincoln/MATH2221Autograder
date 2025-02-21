x = rand(1000,1);
for i = 1:1000
    x(i) = chutes_and__ladders();
end
histogram(x,'Normalization','probability')
xlabel('Number of rounds needed');
ylabel('Probability')