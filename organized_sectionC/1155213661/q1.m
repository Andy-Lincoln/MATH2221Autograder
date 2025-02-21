x = [1.1 3.4 5.6 7.9 8.8 10.2];
y = [2.8 5.6 11.5 25.1 33.8 52.3];

figure;
subplot(3,1,1);
loglog(x, y, 'ro-');
grid on;
title('Log-Log Plot');
xlabel('x');
ylabel('y');

subplot(3,1,2);
semilogx(x, y, 'ms-');
grid on;
title('Semi-Log Plot (x logarithmic)');
xlabel('x');
ylabel('y');

subplot(3,1,3);
semilogy(x, y, 'bd-');
grid on;
title('Semi-Log Plot (y logarithmic)');
xlabel('x');
ylabel('y');