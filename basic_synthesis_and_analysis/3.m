% Generate a script file which produces a sine wave with 2Hz, 5Hz, 10Hz and 20Hz
frequencies on a single figure by using subplot command. Label the subplots with the relevant
frequency to distinguish the signals clearly.

t = 0:0.01:2;
f1 = 2; f2 = 5; f3 = 10; f4 = 20;

subplot(2,2,1);
y1 = sin(2*pi*f1*t);
plot(t,y1);
title("f = 2Hz");

subplot(2,2,2);
y2 = sin(2*pi*f2*t);
plot(t,y2);
title("f = 5Hz");

subplot(2,2,3);
y3 = sin(2*pi*f3*t);
plot(t,y3);
title("f = 10Hz");

subplot(2,2,4);
y4 = sin(2*pi*f4*t);
plot(t,y4);
title("f = 20Hz");
