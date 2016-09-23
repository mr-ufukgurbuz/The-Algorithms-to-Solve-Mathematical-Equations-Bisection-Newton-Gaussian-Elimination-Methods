% UFUK GURBUZ. 150113058

x = linspace(-pi, pi, 1000);   % Creates points between -pi and pi 1000 times
y = 5.*cos(x.^4/3).*tan(exp((0.2).*x)).*cos(log(4.*x));   % Finds y values according to x
	
plot(x,y,'b.-');        % Plots graph x-y values
	
Text = 'THE GRAPHIC';
title(Text,'Color','r');   % Title for first graph