function [ S , n] = signal( w , Nx )

for n = 0:Nx
S(n+1) =  cos(w*(n^2));
end


