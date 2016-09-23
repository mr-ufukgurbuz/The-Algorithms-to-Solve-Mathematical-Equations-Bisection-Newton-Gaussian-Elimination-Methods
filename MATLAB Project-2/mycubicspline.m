%{
UFUK GÜRBÜZ 150113058
CAFER SAMET GÜLLÜCE 150113081
MATH 259 – Assignment 2
Problem 2

%}

function [ result ] = mycubicspline( x,y )

    n=length(x);
    
    h=zeros(n,1);
    a=zeros(n,1);
    b=zeros(n,1);
    c=zeros(n,1);
    d=zeros(n,1);
    m=zeros(n,1);
    l=zeros(n,1);
    z=zeros(n,1);
    
    l(1)=1;
    m(1)=0;
    z(1)=0;
    
    for i=1:n-1
        h(i) = x(i+1) - x(i); 
    end  
    
    for i=2:n-1
        
        l(i)=2*( x(i+1) - x(i-1)) - h(i-1) * m(i-1);
        m(i)=h(i) / l(i);
        a(i)=3/h(i)*(y(i+1) - y(i)) - 3/h(i-1)*(y(i) - y(i-1));
        z(i)=( a(i) - h(i-1)*z(i-1) ) / l(i) ;
    end    
    
    l(n)=1;
    z(n)=0;
    c(n)=0;
    
    for j=(n-1):-1:1
        c(j)= z(j) - m(j) * c(j+1);
        b(j)= ( y(j+1) - y(j) ) / h(j) - h(j) * ( c(j+1) + 2*c(j) )/3; 
        d(j)=( c(j+1) - c(j) ) / (3*h(j));
    end
    
    result=[ d c b y ];
    
end

