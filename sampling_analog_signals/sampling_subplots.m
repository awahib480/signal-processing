% a script using subplot command to generate task#1, task#2, task#3 and task#4 plots.

f = input('Enter signal frequency: ');
t = 0:0.001:1;
x = 2*sin(2*pi*f*t);

% inputs of sampling freq
fs1 = input('Enter fs < 2f: ');
fs2 = 2*f;
fs3 = input('Enter fs > 2f: ');

% reconstruct (sampled time, sampled signal, original time)
x1 = spline(0:1/fs1:1,2*sin(2*pi*f*(0:1/fs1:1)),t);
x2 = spline(0:1/fs2:1,2*sin(2*pi*f*(0:1/fs2:1)),t);
x3 = spline(0:1/fs3:1,2*sin(2*pi*f*(0:1/fs3:1)),t);

subplot(4,1,1);
plot(t,x);
title('Task 1: Original');

subplot(4,1,2);
plot(t,x1);
title('Task 2: fs < 2f');

subplot(4,1,3);
plot(t,x2);
title('Task 3: fs = 2f');

subplot(4,1,4);
plot(t,x3);
title('Task 4: fs > 2f');

grid on;
