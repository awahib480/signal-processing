n = 0:199;
f = 1/50;
N = 200;

% Original signal
x = cos(2*pi*f*n);

% Truncation
xq = fix(x);
% error
eq = xq - x;

subplot(3,1,1);
stem(n,x);
title('Original Signal');
xlabel('n');
ylabel('x(n)');
grid on;

subplot(3,1,2);
stem(n,xq);
title('Truncated Signal');
xlabel('n');
ylabel('xq(n)');
grid on;

subplot(3,1,3);
stem(n,eq);
title('Quantization Error');
xlabel('n');
ylabel('eq(n)');
grid on;

% Power and SQNR
Px = (1/N)*sum(x.^2);
Pq = (1/N)*sum(eq.^2);
SQNR = 10*log10(Px/Pq);

% display
fprintf('Px = %.6f\n',Px);
fprintf('Pq = %.6f\n',Pq);
fprintf('SQNR = %.6f dB\n',SQNR);
