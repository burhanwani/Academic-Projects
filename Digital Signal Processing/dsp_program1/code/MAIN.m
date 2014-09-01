clc;
clear all;
close all;
%defining h(n) signal with 25 samples which is defined as:
for n=0:8
    h(n+1)=n;
end

for n=9:16
    h(n+1)=16-n;
end

for n=17:24
    h(n+1)=0;
end

Nh=24;

%plot figure
figure;
stem (0:Nh,h);
title ('signal h');
xlabel ('n');
ylabel ('h(n)');

%defining x(n) signal with 90 samples which is defined as::-
for n=0:4
    x(n+1)=0;
end

for n=5:15
    x(n+1)=1;
end

for n=16:19
    x(n+1)=0;
end

for n=20:35
    x(n+1)=-1.5;
end

for n=36:44
    x(n+1)=0;
end

for n=45:65
    x(n+1)=2;
end

for n=66:89
    x(n+1)=0;
end

Nx=89;

% plot figure
figure;
stem (0:Nx,x);
title ('signal x');
xlabel ('n');
ylabel ('x(n)');

%calling convolution function
[y Ny] = CONV1(x,Nx,h,Nh);

%plot figure
figure;
stem (0:Ny,y);
title ('convolution sequence y');
xlabel ('n');
ylabel('y(n)');
