% Generate a function which produces a sine wave by accepting frequency and amplitude as input arguments and return a plot of sine wave for the inputted parameters.

function plotSine(f, A)
t = 0:0.01:1;              % Time
y = A * sin(2*pi*f*t);     % Sine wave
plot(t, y);
xlabel('Time');
ylabel('Amplitude');
title('Sine Wave');
end

plotSine(5,2);
