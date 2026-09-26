% Use FOR loop to generate a single vector y, which is a digitized unit sine wave with ten samples per cycles, with 100 elements.

y = zeros(1,100);

for n = 1:100
    y(n) = sin(2*pi*(n-1)/10);
end

stem(y);
xlabel('Sample');
ylabel('Amplitude');
title('Digitized Unit Sine Wave');
grid on;
