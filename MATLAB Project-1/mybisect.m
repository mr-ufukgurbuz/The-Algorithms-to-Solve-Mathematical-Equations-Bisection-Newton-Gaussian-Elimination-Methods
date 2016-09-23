% UFUK GURBUZ. 150113058

function [failure,root,numiter] =  mybisect(f,a,b,tol,N)	% The function takes five inputs and returns three output
    
    failure = 1;		% Failure message
    numiter = 1;        % Numiter counter
    root0 = inf;        % New creating root

    if f(a)*f(b) < 0
        
        while numiter <= N			% Iteration loop

           root = ( a + b ) / 2;	% Describes new root recursively

            if f(root) == 0 ||  abs(root-root0) < tol	% If image of root is zero or difference between numbers is less than tolerans value
               failure = 0;		% Failure message
               break;
            else 						% If image of root isn't zero or difference between numbers isn't less than tolerans value
               numiter = numiter+1;		% Counts numbers of repetition
               
               if f(a) * f(root) > 0		% If the signs of "a" number and new "root" are same
                   a = root;						% "a" is root
                   root0 = root;
               else							% If the signs of "a" number and new "root" aren't same
                   b=root;						% "b" is root
                   root0 = root;
               end
               
            end
        end
        
    else
        root = 'Not Found !';
        fprintf('\n Root is not in the interval. Please, enter new interval !');
    end
    
end
