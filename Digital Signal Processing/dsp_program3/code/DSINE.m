function [F]= DSINE(Wc,m) % This function creates  digital low pass moving average filter
M2 = floor((2*pi*m)/Wc)-1; % Here floor is used to round off the digit to it's lower interger value
for n = 0:M2+1
    F(n+1)= (1/(M2+1))*1; % Here value of M2 has been calculated after equating H(e^jw) to zero.
end
end