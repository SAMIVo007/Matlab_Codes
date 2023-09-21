%circular conv using linear conv
clc
clear all;

x1 = [1 0 2 1 1]
x2 = [5 1 9 1]

n = length(x1) + length(x2) - 1
N = max(length(x1),length(x2))

X1 = [x1, zeros(1, n - length(x1))]
X2 = [x2, zeros(1, n - length(x2))]

Y = zeros(1,n)
for i=1:n
    for j=1:i
        Y(i) = Y(i) + X1(j)*X2(i-j+1)
    end
end
Z = zeros(size(Y))
for i = 1:n
    if i<=N
        Z(i) = Z(i) + Y(i)
    else
        Z(i-N) = Z(i-N) + Y(i)
    end
end

subplot(2,2,1)
stem(x1)
xlabel('n -->')
ylabel('xn -->')
title('X1')

subplot(2,2,2)
stem(x2)
xlabel('n -->')
ylabel('xn -->')
title('X2')

subplot(2,2,3)
stem(Y)
xlabel('n -->')
ylabel('xn -->')
title('Circluar conv using Linear conv')

circonv = cconv(x1,x2,N)
subplot(2,2,4)
stem(Y)
xlabel('n -->')
ylabel('xn -->')
title('Circular conv using cconv')