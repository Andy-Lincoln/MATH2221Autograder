for j=1:1000
    s(j)=chutes_and_ladders;
end
figure;
histogram(s,'Normalization','Probability');
xlabel('Number of rounds needed');
ylabel('Probability');
title('Chutes and Ladders');