function [sum1,w] = Amp1 (Nm , X , Nx)
for x=0:Nm
    w(x+1) = (pi*x)/Nm;
    z = exp(1i*w(x+1));
    sum = 0;
    for m = 0:Nx
        sum = sum + X(m+1)*(z.^m);
    end
    sum1(x+1) = abs(sum);
end

    
    