x=zeros(1,1000);
for n=1:1000
    x(n)=chustes_and_ladders();
end
figure;
histogram(x,'Normalization','Probability')
title('Chusters and Ladder')
xlabel('Number of rounds needed')
ylabel('Probability')