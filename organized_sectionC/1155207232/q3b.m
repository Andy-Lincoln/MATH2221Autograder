u=linspace(0,2*pi,100);
v=linspace(0,2*pi,100);
[U,V]=meshgrid(u,v);
r=((cos(V)).^(20)+(sin(V)).^(20)).^(-(1/20));
X=(4+(r.*cos(V+2.*(U)))).*(cos(U));
Y=(4+(r.*cos(V+2.*(U)))).*(sin(U));
Z=r.*sin(V+2.*(U));
figure;
surf(X,Y,Z,U);
axis equal;
view(-15,30)
colormap hsv