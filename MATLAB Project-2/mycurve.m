%{
UFUK GÜRBÜZ 150113058
CAFER SAMET GÜLLÜCE 150113081
MATH 259 – Assignment 2
Problem 3

%}

%{
    4 defa run edilip outputlar(plotlar) rapora yazýlacak.
%}


[x,y]=ginput(n);%Get n coordinates from user

disp(['The X Coordinates are: [' num2str(x(:).') ']']) ; % Display x coordinates
disp(['The Y Coordinates are: [' num2str(y(:).') ']']) ; % Display y coordinates

l=1:length(x);
l=l';

%Cubic spline interpolants
Sx = mycubicspline(l,x);% Coefficients of x
Sy= mycubicspline(l,y);% Coefficients of y

hold on
%Plotting cubic spline
for i= 1:length(x)-1
    ls=linspace(l(i) ,l(i+1),100);
    sx= polyval(Sx( i, :), ls-l(i));
    sy= polyval(Sy( i, :), ls-l(i));
    plot(sx,sy,'.');%Plotting splines
end
legend({'Interpolating Polynomial'},'FontSize',10,'FontWeight','bold','Location','southoutside');
xlabel('x-axis');
ylabel('y-axis');
title('QUESTION 3','FontWeight','bold','Color','r');
hold off

