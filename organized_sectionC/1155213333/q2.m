t=linspace(0,12*pi,2000);
r = exp(sin(t))-2*cos(4*t)+(sin((2*t-pi)/24)).^5;
figure;
polarplot(t,r,'-','Color',[254,141,3]/255);