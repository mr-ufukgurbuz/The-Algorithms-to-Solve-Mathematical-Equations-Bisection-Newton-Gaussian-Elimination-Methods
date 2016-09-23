% UFUK GURBUZ. 150113058

function [ failure,root,numiter ] = mynewton( f,p0,tol,N )	% The function takes four inputs and returns three output
	
	syms x;		% Symbolic variable
	g(x)= diff(f,x);	% Takes differantial of f function

    failure= 1;		% Failure message
    numiter = 1;    % Numiter counter
    
	while numiter <= N 			% Iteration loop
        
		root = double(p0-f(p0)/g(p0));	% Describes new root recursively			
        
		if abs(root-p0) < tol		% If the difference between root and p0 is less than tolerans value
            %disp(root);
            failure = 0;	% Failure message
            break;
        end
        
		numiter = numiter+1;		% Counts numbers of repetition
        p0 = root;				% "p0" is root
    end 
    
end

