function [Am,w] = Amp(Nm,S,Nx);
for k=0:Nm
    w(k+1)= (pi*k)/Nm;
    Z(k+1) = exp(1i*w(k+1));
end
for k=0:Nm
    Am(k+1)=0;
for n =0:Nx
   Am(k+1)= (Am(k+1) + S(n+1)*Z(k+1)^n);
 end
end

for k=0:Nm
    Am(k+1)=abs(Am(k+1)); %absolute value or magnitude
end
end