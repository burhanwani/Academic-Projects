function [ a,b ] = DSINE2(Wc1,Wc2)

T=2;%we take the value of T=2 
W1 = (2/T)*tan(Wc1/2);%changing analog frequencies to digital frequency
W2 = (2/T)*tan(Wc2/2);
Wo = (W2*W1)^0.5;
Bw = W2-W1;%bandwidth

c = Bw^2;%putting the value of s as (s^2 + Wo^2)/s*Bw and H(z)=H'(s)|s =[1-inv(z)]/[1+inv(z)] 
d = (2^0.5)*Bw;% and equating the coefficients with the standard definition of H(z), we 
e = (Bw^2 + (2*Wo^2));%get the values of the different coefficients.
f = (2^0.5)*Bw*Wo^2;
g = Wo^4;

b0 = c;
b1 = 0;
b2 = (-2*c);
b3 = 0;
b4 = c;

a0 = (1+d+e+f+g);
a1 = ((-2*d)+(2*f)+(4*g)-4);
a2 = ((6*g)-(2*e)+6);
a3 = ((2*d)-(2*f)+(4*g)-4);
a4 = (1-d+e-f+g);

a = [a0 a1 a2 a3 a4];%a is a vector storing the coefficients of denominator
b = [b0 b1 b2 b3 b4];%b is a vector sroring the coefficients of numerator


