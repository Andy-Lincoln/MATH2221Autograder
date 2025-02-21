phi=linspace(1,12*pi,2000);
rho=exp(sin(phi))-2*cos(4.*phi)+(sin((2.*phi-pi)./24)).^5;
figure;
polarplot(phi,rho,'Color',[254,141,3]/255)