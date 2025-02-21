theta=linspace(0,12*pi,2000);
r=exp(sin(theta))-2*(cos(4*theta))+(sin((2*theta-pi)/24)).^5;
figure;
polarplot(theta,r,'-','Color',[254,141,3]/255);