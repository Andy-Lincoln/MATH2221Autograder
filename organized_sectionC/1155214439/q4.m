v=zeros(1,1000);
for i=1:1000
    v(i)=chutes_and_ladders();
end
figure;
histogram(v,'Normalization','Probability');
xlabel('Numberof round needed');
ylabel('Probability');
title('Chutes and Ladders');