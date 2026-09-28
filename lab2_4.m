f = input('Enter frequency in Hz: ');
fs = input('Enter sampling frequency in Hz: ');

% Original
t = 0:0.001:1;
x = 2*sin(2*pi*f*t);

% sampled
ts = 0:1/fs:1; % t=1/f (time samples)
xs = 2*sin(2*pi*f*ts);

%reconstruct - spline(sampled time, sampled signal, original time)
xr = spline(ts,xs,t);

subplot(3,1,1);
plot(t,x);
title('Continuous Signal');
grid on;

subplot(3,1,2);
stem(ts,xs);
title('Discrete Signal');
grid on;

subplot(3,1,3);
plot(t,xr);
title('Reconstructed Signal');
grid on;
