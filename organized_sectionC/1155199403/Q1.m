% q1.m
% MATLAB script to create a figure with three subplots

% Define data points
x = [1.1, 3.4, 5.6, 7.9, 8.8, 10.2];
y = [2.8, 5.6, 11.5, 25.1, 33.8, 52.3];

% Create a figure
figure;

% Subplot 1: Log-log plot with red circle markers and solid lines
subplot(3,1,1);
loglog(x, y, 'r-o', 'LineWidth', 1.5, 'MarkerSize', 8); 
grid on;
title('Log-Log Plot');
xlabel('x (log scale)');
ylabel('y (log scale)');

% Subplot 2: Semi-log plot (log scale on x-axis, linear scale on y-axis)
subplot(3,1,2);
semilogx(x, y, 'm-s', 'LineWidth', 1.5, 'MarkerSize', 8); 
grid on;
title('Semi-Log Plot (Log X, Linear Y)');
xlabel('x (log scale)');
ylabel('y (linear scale)');

% Subplot 3: Semi-log plot (linear scale on x-axis, log scale on y-axis)
subplot(3,1,3);
semilogy(x, y, 'b-d', 'LineWidth', 1.5, 'MarkerSize', 8); 
grid on;
title('Semi-Log Plot (Linear X, Log Y)');
xlabel('x (linear scale)');
ylabel('y (log scale)');


