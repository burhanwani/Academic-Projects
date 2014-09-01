function [y Ny]=CONV1(x,Nx,h,Nh)
Ny=Nx+Nh; 
for n=0:Ny
    y(n+1)=0;
    for k=0:Nh
        if(n-k+1>=1 && n-k+1<=Nx+1)
            y(n+1) = y(n+1) + h(k+1)*x(n-k+1); % Formula for convolution
        end
    end
end
end