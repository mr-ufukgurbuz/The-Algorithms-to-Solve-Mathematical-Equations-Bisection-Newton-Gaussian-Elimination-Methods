%{
UFUK GÜRBÜZ 150113058
CAFER SAMET GÜLLÜCE 150113081
MATH 259 – Assignment 2
Problem 2

%}

xValues= linspace(1,8,8);% x coordinates
yValues= rand(1,8);% y coordinates
display(yValues);
yValues=yValues';

x= 1:length(xValues);
x=x';
V = [xValues.^7;xValues.^6;xValues.^5;xValues.^4;xValues.^3;xValues.^2;xValues.^1;xValues.^0]'; %Vandermode Matrix

[singular, a] = mygauss(V,yValues);%Finds coefficients

xs = linspace(1,8,1000);
ys = polyval(a,xs); %Interpolating polynomial

hold on
plot(xs,ys,'r','linewidth',2);%Plot of interpolating polynomial

xlabel('x-axis');
ylabel('y-axis');
title('QUESTION 2','FontWeight','bold','Color','r');
scatter(xValues,yValues,'Marker','o','linewidth',2);%Data points
xValues=xValues';

%Cubic spline interpolants
Sx = mycubicspline(x,xValues);% Coefficients of x 
Sy = mycubicspline(x,yValues);% Coefficients of y 

%Plotting cubic splines
for i= 1:length(x)-1
    ls=linspace(x(i) ,x(i+1),100);
    sx= polyval(Sx( i, :), ls-x(i));
    sy= polyval(Sy( i, :), ls-x(i));
    plot(sx,sy,'m','linewidth',2);%Plotting splines
end    
legend({'Interpolating Polynomial','Points','Cubic Spline'},'FontSize',8,'Location','southoutside');
hold off
