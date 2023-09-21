%a
x = input('Enter sequence : ')
subplot(3,2,[1,2])
stem(x)
title('Sequence x[n]')
xlabel('n --> ')
ylabel('x --> ')


N = length(x)
y = zeros(1,N)
for k=0:N-1
    for n=0:N-1
        y(k+1) = y(k+1) + x(n+1)*exp(-1i*2*pi*k*n/N);
    end
end

subplot(3,2,3)
stem(abs(y))
title('DFT of x[n] : Magnitude')
xlabel('K --> ')
ylabel('X[K] --> ')

y1 = fft(x)
subplot(3,2,4)
stem(abs(y1))
title('FFT of x[n] : Magnitude')
xlabel('K --> ')
ylabel('X[K] --> ')

subplot(3,2,5)
stem(angle(y))
title('DFT of x[n] : Phase')
xlabel('k --> ')
ylabel('X[k] --> ')

subplot(3,2,6)
stem(angle(y))
title('FFT of x[n] : Phase')
xlabel('k --> ')
ylabel('X[k] --> ')

