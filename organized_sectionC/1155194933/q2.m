r=@(theta)exp((sin(theta))-2*cos(4*theta)+(sin((2*theta-pi)/24).^5));
theta=linspace(0,12*pi,1000);
figure;
polarplot(theta,r(theta),'-','Color',[254/255,141/255,3/255]);