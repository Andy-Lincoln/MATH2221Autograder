u=linspace(0,2*pi,100);
v=linspace(0,2*pi,100);
[U,V]=meshgrid(u,v)
r=(cos(V).^20+sin(V).^20).^(-1/20)
figure;
surf((4+r*cos(V+2*U))*cos(U),(4+r*cos(V+2*U))*sin(U),r*sin(V+2*U),U);
axis equal;
colormap hsv;
view(-15,30);




