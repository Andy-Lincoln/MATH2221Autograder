t=linspace(0,2*pi,100);
x=sin(t)+2*sin(2*t);
y=cos(t)-2*cos(2*t);
z=-sin(3*t);
plot3(x,y,z,'b-','LineWidth',10);
xlim([-3,3]);
ylim([-3,3]);
zlim([-3,3]);