% Define t as a vector with 100 equally spaced points from 0 to 2π
t = linspace(0, 2*pi, 100);

% Define x(t), y(t), z(t) according to the given functions
x = sin(t) + 2*sin(2*t);
y = cos(t) - 2*cos(2*t);
z = -sin(3*t);

% Create the 3D plot with blue solid lines and line width 10
figure;
plot3(x, y, z, 'b-', 'LineWidth', 10);

% Set equal axis scales
axis equal;

% Add labels and title
xlabel('x(t)');
ylabel('y(t)');
zlabel('z(t)');
title('3D Curve C');

