%continuous
t = 0:0.001:1 %sampling frequency
freq = input('enter frequency ')
duty = input('enter duty cycle ')
Xt = square(2*pi*freq*t, duty)
plot(t,Xt)
title('Continouos Square wave')
xlabel('t -->')
ylabel('Xt -->')

%discrete
n = 0:0.005:1
freq = input('enter frequency ')
duty = input('enter duty cycle ')
Xn = square(2*pi*freq*n, duty)
stem(n,Xn)
title('Discrete Square wave')
xlabel('n -->')
ylabel('Xn -->')
