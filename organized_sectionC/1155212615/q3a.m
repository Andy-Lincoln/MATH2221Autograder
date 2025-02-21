t = 0:2*pi/99:2*pi;
figure;
plot3(sin(t)+2*sin(t), cos(t)-2*cos(2.*t), -sin(3*t), 'b-', 'LineWidth',10);
axis equal;
