t = linspace(0,2*pi,100);
plot3(sin(t)+2*sin(2*t), cos(t)-2*cos(2*t), -sin(3*t),'b-','LineWidth', 10);
axis equal;