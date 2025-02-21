% Define θ as a vector with 2000 equally spaced points from 0 to 12π
theta = linspace(0, 12*pi, 2000);

% Define r(θ) using the given equation
r = exp(sin(theta)) - 2*cos(4*theta) + sin((2*theta - pi)/24).^5;

% Define the RGB color value [254,141,3]/255
lineColor = [254, 141, 3] / 255;

% Create the polar plot
figure;
polarplot(theta, r, 'Color', lineColor, 'LineWidth', 1.5);

% Add title
title('Polar Plot of r(\theta)');