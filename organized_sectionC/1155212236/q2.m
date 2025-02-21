phi = linspace(0,12*pi,2000);
figure;
polarplot(phi,exp(sin(phi))-2*cos(4*phi)+(sin((2*phi-pi)/24)).^5,'-','Color',[254,141,3]/255);