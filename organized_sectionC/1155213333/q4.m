trial = zeros(1,1000);
for i = 1:1000
    trial(i)=chutes_and_ladders();
end
figure;
histogram(trial,'Normalization','Probability');
xlabel('Nmuber of rounds need');
ylabel('Probability');
title("Chutes and Ladders");
