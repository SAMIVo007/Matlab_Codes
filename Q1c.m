%continuous
t = 0:0.001:1 %sampling frequency
freq = input('enter frequency ')
phase = input('enter phase ')
amp = input('enter amplitude ')
Xt = amp*cos(2*pi*freq*t + phase)
subplot(2,1,1)
plot(t,Xt)
title('Continouos Sinusoidal wave: cosine ')
xlabel('t -->')
ylabel('Xt -->')

%discrete
n = 0:0.005:1
Xn = amp*sin(2*pi*freq*n + phase)
subplot(2,1,2)
stem(n,Xn)
title('Discrete sinusoidal wave: sin')
xlabel('n -->')
ylabel('Xn -->')
