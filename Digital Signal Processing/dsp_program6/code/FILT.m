function [ y ] = FILT( a,b,X )

Nx = 200;

y(1) = (1/a(1))*b(1)*X(1);%the difference equation obtained by solving H(z)=Y(z)/X(z)
y(2) = (1/a(1))*(b(1)*X(2)+b(2)*X(1)-a(2)*y(1));%and using the fact that both x and y are zero for negative arguments.
y(3) = (1/a(1))*(b(1)*X(3)+b(2)*X(2)+b(3)*X(1)-a(2)*y(2)-a(3)*y(1));
y(4) = (1/a(1))*(b(1)*X(4)+b(2)*X(3)+b(3)*X(2)+b(4)*X(1)-a(2)*y(3)-a(3)*y(2)-a(4)*y(1));
y(5) = (1/a(1))*(b(1)*X(5)+b(2)*X(4)+b(3)*X(3)+b(4)*X(2)+b(5)*X(1)-a(2)*y(4)-a(3)*y(3)-a(4)*y(2)-a(5)*y(1));
for n=4:Nx
    y(n+1) = (1/a(1))*(b(1)*X(n+1)+b(2)*X(n)+b(3)*X(n-1)+b(4)*X(n-2)+b(5)*X(n-3)-a(2)*y(n)-a(3)*y(n-1)-a(4)*y(n-2)-a(5)*y(n-3));
end

