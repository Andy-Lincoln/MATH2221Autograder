x=[1.1 3.4 5.6 7.9 8.8 10.2];
y=[2.8 5.6 11.5 25.1 33.8 52.3];
figure;
subplot(1,3,1);
loglog(x,y,'ro-');
subplot(1,3,2);
semilogx(x,y,'ms-');
subplot(1,3,3);
semilogy(x,y,'bd-');