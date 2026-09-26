% Generate a script file which produces a sine wave with 2 Hz frequency.

t=0:0.01:2;
f=2;
y=sin(2*pi*f*t);
plot(t,y);
xlabel("Time (s)");
ylabel("Amplitude");
