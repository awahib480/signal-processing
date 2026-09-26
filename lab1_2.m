t=0:0.01:2;
f=input("Enter frequency: ");
y=sin(2*pi*f*t);
plot(t,y);
xlabel("Time (s)");
ylabel("Amplitude");