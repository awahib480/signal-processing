% Consider the analog signal
% xa(t) = 3 cos(100πt)

% Suppose that the signal is sampled at the rate Fs=75 Hz. What is the discrete time signal
% obtained after sampling? Plot the discrete-time signal.

t = 0:0.001:0.1;
x = 3*cos(100*pi*t);

% sampled
ts = 0:1/75:0.1;
xs = 3*cos(100*pi*ts);

%reconstruct - spline(sampled time, sampled signal, original time)
xr = spline(ts,xs,t);

subplot(3,1,1);
plot(t,x);
title('Original Signal');

subplot(3,1,2);
stem(ts,xs);
title('Sampled Signal at 75 Hz');

subplot(3,1,3);
plot(t,xr);
title('Spline Reconstruction');

grid on;
