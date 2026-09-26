% Repeat all above tasks by using stem command rather than plot command.

function x = s(t)
x = sin(2*pi*t);
stem(t, x);
xlabel('Time (s)');
ylabel('Amplitude');
title('Sine Wave');
grid on;
end

t = 0:0.001:1;
x = s(t);


