n = 0:1:499;
A = 1;
x = A*cos(2*pi*(1/50)*n);

% round to 2 decimal places
xq = round(x, 2);

%original
subplot(3,1,1);
stem(n, x);
xlabel('n');
ylabel('x[n]');
title('Original Signal');
grid on;

%rounded
subplot(3,1,2);
stem(n, xq);
xlabel('n');
ylabel('x_q[n]');
title('Quantized Signal (2 Decimal Places)');
grid on;

% calculating Px, Pq and SQNR
N = length(x);
eq = xq - x;

%error
subplot(3,1,3);
stem(n, eq);
xlabel('n');
ylabel('e_q[n]');
title('Quantized Error');
grid on;

Px = 1/N * sum(x.^2);
Pq = 1/N * sum(eq.^2);
SQNR = 10*log10(Px/Pq);

% display results
fprintf('Px = %.6f\n', Px);
fprintf('Pq = %.6f\n', Pq);
fprintf('SQNR = %.6f dB\n', SQNR);