f = input('Enter frequency in Hz: ');
t = 0:0.001:1;
x = 2*sin(2*pi*f*t);
plot(t,x);
xlabel('Time (s)');
ylabel('Amplitude');
