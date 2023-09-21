x1 = [1 0 2 1 1]
x2 = [5 1 9 1]

X1 = [x1 zeros(1,length(x2))]
X2 = [x2 zeros(1,length(x1))]

n = length(x1) + length(x2) - 1
Y = zeros(1,n)

for i=1:n
    for j=1:i
        Y(i) = Y(i) + X1(j)*X2(i-j+1)
    end
end

subplot(3,1,1)
stem(X1)
xlabel('n -->')
ylabel('xn -->')
title('X1')
subplot(3,1,2)
stem(X2)
xlabel('n -->')
ylabel('xn -->')
title('X2')
subplot(3,1,3)
stem(Y)
xlabel('n -->')
ylabel('xn -->')
title('x1*x2')