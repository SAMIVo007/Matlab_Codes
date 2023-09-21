% compute linear conv using circular conv
clc
clear all;

x1 = input('Enter Sequence first : ')
x2 = input('Enter Sequence second : ')

N = length(x1) + length(x2) - 1

X1 = [x1, zeros(1, N - length(x1))]
X2 = [x2, zeros(1, N - length(x2))]
Y = zeros(1,N)

for i=1:N
    for j=1:N
        k = i-j+1;
        if k<=0
            k = N+k;
        end
        Y(i) = Y(i) + X1(j)*X2(k);
    end
end
Y

subplot(2,2,1)
stem(x1)
title('Sequence x1[n]')
xlabel('n --> ')
ylabel('x --> ')

subplot(2,2,2)
stem(x2)
title('Sequence x2[n]')
xlabel('n --> ')
ylabel('x --> ')

subplot(2,2,3)
stem(Y)
title('linear conv using Circular conv')
xlabel('n --> ')
ylabel('x --> ')

linearconv = conv(x1,x2)
subplot(2,2,4)
stem(linearconv)
title('Linear conv using cconv')
xlabel('n --> ')
ylabel('x --> ')