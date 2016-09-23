% UFUK GURBUZ. 150113058

function plotpder(coef,x1,x2,numpoints)  % The function takes four input parameters
	syms x;     % Symbolic variable
	func = poly2sym(coef,x);      % Creates symbolic polynom
    disp('    The Equation');
    disp('--------------------');   % Display my text
	disp(func);                     % Display equation

	funcder = diff(func,x,1);     % Takes differantial my equation

	values = linspace (x1,x2,numpoints);  % Creates points between x1 and x2
                                         %numpoints times
	
    y = subs(func,x,values);          % Substitutes x values on the equation

	yder = subs(funcder,x,values); % Substitutes x values on the differantial
                                 % equation.
	
    text1 = 'FUNCTION';             % Text1
	text2 = 'DERIVATIVE OF FUNCTION';     % Text2
	
	abc = ['             ',text1,'           ',text2];
	
	def = [char(func),'                 ',char(funcder)];
	
	
	adf = char(abc,def);
	bothText1 = char(text1,char(func));       % All text2(Title1)
	bothText2 = char(text2,char(funcder));    % All text2(Title2)

	%subplot(1,2,1);             % Creates subplot
	plot(values,y,'g',values,yder,'r');             % Adds first plot onto subplot
	legend('Function','Differential',0);
	xlabel(' X Axis','Color','m');      % X Label for first graph
	ylabel(' Y Axis','Color','m');      % Y Label for first graph
	title(adf,'Color','b');   % Title for first graph

end