T=zeros(1,1000);
for t=1:1000
    n = chutes_and_ladders();
    T(t)=n;
end
figure;
histogram(T,'Normalization','Probability');
xlabel('Number of rounds needed');
ylabel('Probability');
title('Chutes and Ladders');

