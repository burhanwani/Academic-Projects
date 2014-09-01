function [S]= Signal(w,n)

   S = n*exp(-n/6)*cos(w*n);
   
end