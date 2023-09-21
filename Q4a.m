x1 = input('Enter sequence1 : ')
x2 = input('Enter sequence2 : ')

N = max(length(x1), length(x2))
x1 = [x1, zeros(1, N - length(x1))]
x2 = [x2, zeros(1, N - length(x2))]
Y = zeros(1,N)
for i=1:N
    for j=1:N
        k = i-j+1;
        if k<=0
            k = N+k;
        end
        Y(i) = Y(i) + x1(j)*x2(k);
    end
end
Y
subplot(4,1,3)
stem(Y)
title('Circular Conv of x1[n], x2[n]')
xlabel('n --> ')
ylabel('x --> ')

subplot(4,1,1)
stem(x1)
title('Sequence x1[n]')
xlabel('n --> ')
ylabel('x --> ')

subplot(4,1,2)
stem(x2)
title('Sequence x2[n]')
xlabel('n --> ')
ylabel('x --> ')

Z = cconv(x1,x2,N)
subplot(4,1,4)
stem(Z)
title('Circular conv using cconv')
xlabel('n --> ')
ylabel('x --> ')