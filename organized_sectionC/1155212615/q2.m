theta = 0:12*pi/1999:12*pi;
rho = exp(sin(theta))-2*cos(4.*theta)+(sin((2.*theta-pi)/24)).^5;
figure;
polarplot(theta,rho, 'Color', [254/255, 141/255, 3/255])