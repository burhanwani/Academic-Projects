Nx = 200;
Nm = 100;
c = 0.01;
Wc1 = 2.0;%we chose predefined cutoff frequencies here. 
Wc2 = 3.0;%

[X , n] = signal(c,Nx);

figure(1);%plotting the signal
stem(X);
title('input X(n)');
xlabel('Nx');
ylabel('X(n)');

[Xspectrum,w] = Amp1(Nm,X,Nx);

figure(2);%plotting the amplitude spectrum of the input signal
plot(Xspectrum);
title('Amplitude spectrum of input');
xlabel('Nm');
ylabel('|X(n)|');

[ a,b ] = DSINE2( Wc1,Wc2 );


[ out,w ] = Amp2( a,b );%plotting the amplitude spectrum of the filter
figure(3);
plot(w,out);
title('Amplitude spectrum of filter');
xlabel('W');
ylabel('|Ha(Z)|');

[ Y ] = FILT( a,b,X );
figure(4);%plotting the filtered output
stem(Y);
title('output Y(n)');
xlabel('Nx');
ylabel('Y(n)');

[Yspectrum,f] = Amp1(Nm,Y,Nx);
figure(5);%plotting the spectrum of the filtered output
plot(f,Yspectrum);
title('Amplitude spectrum of output');
xlabel('w');
ylabel('|Y(n)|');