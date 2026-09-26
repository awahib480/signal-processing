% Implement a function as defined below, which produces a sine wave of 1001
samples with spacing of 1 ms.
% [x]=sinewave(t)

f = 2;
t = linspace(0, 1, 1001);
x = sin(2*pi*f*t);
plot(t,x);
