n = zeros(1000,1);
for i = 1:1000
    n(i) = chutes_and_ladders();
end
figure;
histogram(n, "Normalization", "Probability");
