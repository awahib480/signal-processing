% Generate a script file which produces a sine wave by taking frequency as an input
at run time.

t=0:0.01:2;
f=input("Enter frequency: ");
y=sin(2*pi*f*t);
plot(t,y);
xlabel("Time (s)");
ylabel("Amplitude");
