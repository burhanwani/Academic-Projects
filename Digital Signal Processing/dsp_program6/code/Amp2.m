function [ out,w ] = Amp2( a,b )

Nm = 100;

for x=0:Nm
    w(x+1) = (pi*x)/Nm;
    z = exp(1i*w(x+1)); 
    numerator = 0;
    denominator = 0;
    for n = 0:4
           numerator = numerator + b(n+1)*(inv(z^n));%the numerator in the equation of H(z)
           denominator = denominator + a(n+1)*(inv(z^n));%the denominator in the equation of H(z)
    end
    num(x+1) = abs(numerator);%taking the magnitude of the numerator
    den(x+1) = abs(denominator);%taking the magnitude of the denominator
    out(x+1) = num(x+1)/den(x+1);%final magnitude 
    
end

for i=0:Nm
out(i+1)=out(i+1)/max(out);%normalizing the amplitude between 0 and 1.
end







