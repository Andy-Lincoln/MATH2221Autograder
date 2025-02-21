v=linspace(0,12*pi,2000);
rho=exp(sin(v))-2*cos(4.*v)+(sin((2.*v-pi)/24)).^5
figure;
polarplot(v,rho,"-","color",[254,141,3]/255);

