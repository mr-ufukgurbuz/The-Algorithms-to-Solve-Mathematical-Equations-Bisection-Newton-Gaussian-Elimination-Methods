%{
UFUK GÜRBÜZ 150113058
CAFER SAMET GÜLLÜCE 150113081
MATH 259 – Assignment 2
Problem 1

%}

%Test Inputs

for i=3:5
	A= rand(i,i);
    display(A);
	b= rand(i,1);
    display(b);
	[singular, x] = mygauss(A, b);
    display(singular);
	display(x);
    display('~~~~~~~~~~~~~~~~~~~~~~');
end

A=[1 2 0; 4 5 0; 7 8 0];
display(A);
b=[1 2 3]';
display(b);
[singular, x] = mygauss(A, b);
display(singular);
display(x);

