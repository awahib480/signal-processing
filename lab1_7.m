function harmonics()

f0 = 0.5;
t = 0:0.01:2;

for n = 1:5
    f = n*f0;
    x = cos(2*pi*f*t);

    subplot(5,1,n);
    stem(t,x);
    title(['Harmonic ',num2str(n),' - Frequency = ',num2str(f),' Hz']);
    xlabel('Time (s)');
    ylabel('Amplitude');
    grid on;
end

end
