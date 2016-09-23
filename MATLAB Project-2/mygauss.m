%{
UFUK GÜRBÜZ 150113058
CAFER SAMET GÜLLÜCE 150113081
MATH 259 – Assignment 2
Problem 1

%}

function [singular, x] = mygauss(A,b)
    
    %Check whether matrix is n-by-n or not
    if size(A) ~= size(A')
        display('Matrix is not n-by-n!');
        singular=1;
        x='There is no solution !';
        return;
    end
    %Check whether vector is size of n or not
    if length(b) ~= length(A(:,1))
        display('b vector is not size of n! ');
        singular=1;
        x='There is no solution !';
        return;
    end
    m=length(A(:,1));
   
    %Forward Elimination
    for j=1:(m-1)
        max=-inf;
        index=0;
        %Find max
        for i= j:m
            if max < A(i,j)
                max=A(i,j);
                index=i;
            end   
        end
               
        %If any column or row is 0 then there is no solution
        for i=1:m
            if A(:,i) == 0 %Process is not succesfully
               singular=1;
               x='No solution !';
               return; 
            end

            if A(i,:) == 0 %Process is not succesfully
               singular=1;
               x='No solution !';
               return;
            end
        end
        
        %Swap for A matrix
        temp=A(j,:); 
        A(j,:)=A(index,:);
        A(index,:)=temp;
        %Swap for b vector
        temp=b(j); 
        b(j)=b(index);
        b(index)=temp;
        
        %Performing 0 underside of pivot
        for i= (j+1) : m
            b(i) = b(i) -  A(i,j) / A(j,j) * b(j);
            A(i,:) = A(i,:) -  A(i,j) / A(j,j) * A(j,:);
        end 
        
    end
    
    if A(m,m) == 0 %Process is not succesfully
         singular =1;
         x='No solution !';
         return;
    end
    
    %Back Substitution
    for k = m:-1:1
        x(k,1) = b(k) / A(k,k);
        b = b - b(k)/ A(k,k)*A(:,k);
    end
    
    singular =0;%Process is succesfully
    return;
end