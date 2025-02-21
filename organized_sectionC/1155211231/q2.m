v = linspace(0,12*pi,2000);
r = exp(sin(v))-2*cos(4*v)+sin((2*v-pi)/24).^5;
figure;
polarplot(v,r,'-','Color',[254/255,141/255,3/255]);