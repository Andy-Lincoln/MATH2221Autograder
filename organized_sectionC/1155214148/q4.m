data=zeros(1,1000);
for i=1:1000
    data(1,i)=chutes_and_ladders;
end
figure;
histogram(data,'Normalization','Probability')
xlabel('Number of rounds needed')
ylabel('Probability')
title('Chutes and Ladders')