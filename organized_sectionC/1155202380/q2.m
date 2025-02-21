x=linspace(0,12*pi,2000);
y=exp(sin(x))-2*cos(4*x)+(sin((2*x-pi)/24)).^5;
figure;

polarplot(x,y,...
    '-','Color',[254,141,3]/255);


