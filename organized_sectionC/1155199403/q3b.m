% Define u and v as vectors with 100 equally spaced points between 0 and 2π
u = linspace(0, 2*pi, 100);
v = linspace(0, 2*pi, 100);

% Create 2D meshgrid arrays U, V
[U, V] = meshgrid(u, v);

% Compute r using the given formula
r = (cos(V).^20 + sin(V).^20).^(-1/20);

% Compute X(U,V), Y(U,V), and Z(U,V)
X = (4 + r .* cos(V + 2*U)) .* cos(U);
Y = (4 + r .* cos(V + 2*U)) .* sin(U);
Z = r .* sin(V + 2*U);

% Create surface plot with face color based on U
figure;
surf(X, Y, Z, U);

% Set colormap to hsv
colormap hsv;

% Set equal axis scales
axis equal;

% Set view angle to (-15, 30)
view(-15, 30);

% Add labels and title
xlabel('X(u,v)');
ylabel('Y(u,v)');
zlabel('Z(u,v)');
title('Parametric Surface S');

% Enable grid for better visualization
grid on;

