A=zeros(1,100)
for i=1:1000
    A(1,i)=chutes_and_ladders();
end
figure;
histogram(A,'Normalization','Probability');
