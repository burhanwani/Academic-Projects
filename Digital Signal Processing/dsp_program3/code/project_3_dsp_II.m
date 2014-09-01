function [Am,w] = Amp(Nm,x,n);
Nx = 100;
Nm = 100;
for n =0:Nx
    for k = 0:Nm
w(k+1)= (pi*k)/Nm;
Z(k+1) = exp(j*w(k+1));
Am(k+1)= abs(Am(k+1) + x(n+1)*Z(k+1)^n);
    end
end