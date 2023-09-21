%circular cov using DFT and IDFT
x1 = input('Enter first sequence: ');
x2 = input('Enter second sequence: ');

N = max(length(x1), length(x2));
X1 = fft(x1, N);
X2 = fft(x2, N);
Y = X1 .* X2;
circular_conv = ifft(Y)

subplot(2,2,1)
stem(x1)
xlabel('n -->');
ylabel('x[n] -->');
title('First Sequence -->');

subplot(2,2,2);
stem(x2)
xlabel('n -->');
ylabel('x[n] -->');
title('Second Sequence -->');

subplot(2,2,3);
stem( circular_conv);
xlabel('n -->');
ylabel('y[n] -->');
title('Circular convolution without cconv -->');

circonv = cconv(x1,x2,N)
subplot(2,2,4);
stem( circonv);
xlabel('n -->');
ylabel('y[n] -->');
title('Circular convolution with cconv -->');