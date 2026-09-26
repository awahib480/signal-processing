% Sinewave function

function x = sinewave(f, A)

t = 0:0.01:1;
x = A * sin(2*pi*f*t);

stem(t, x);
xlabel('Time (s)');
ylabel('Amplitude');
title('Sine Wave');
grid on;

end
