
x = input('Enter sequence : ')
subplot(3,1,1)
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

subplot(3,1,2)
stem(y)
title('DFT of x[n]')
xlabel('K --> ')
ylabel('X[K] --> ')

I = zeros(1,N)
for k=0:N-1
    for n=0:N-1
        I(k+1) = I(k+1) + (1/N)*y(n+1)*exp(1i*2*pi*k*n/N);
    end
end

I
subplot(3,1,3)
stem(abs(I))
title('IDFT')
xlabel('n -->')
ylabel('x -->')