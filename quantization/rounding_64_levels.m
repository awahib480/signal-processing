% Rounding to 64 levels. Plot the signals x (n), xq (n) and eq (n) and also compute the corresponding SQNR

n = 0:199;
f = 1/50;
N = 200;

% Original signal
x = cos(2*pi*f*n);

% Rounding to 64 levels
L = 64;
Xmax = 1;
Xmin = -1;
Delta = (Xmax-Xmin)/(L-1);

xq = round((x-Xmin)/Delta)*Delta + Xmin;
eq = xq-x;

% Plot
figure;
subplot(3,1,1);
stem(n,x);
title('Original Signal');

subplot(3,1,2);
stem(n,xq);
title('Quantized Signal (64 Levels)');

subplot(3,1,3);
stem(n,eq);
title('Quantization Error');

% SQNR
Px = (1/N)*sum(x.^2);
Pq = (1/N)*sum(eq.^2);
SQNR = 10*log10(Px/Pq);

fprintf('Px = %.6f\n',Px);
fprintf('Pq = %.6f\n',Pq);
fprintf('SQNR = %.6f dB\n',SQNR);
