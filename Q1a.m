n = -2:0.1:2
Xna = (n==0)
subplot(3,2,1)
stem(n,Xna)
xlabel("n -->")
ylabel("Xn -->")
title("Unit Impulse Function: discrete")

Xnb = (n>=0)
subplot(3,2,3)
stem(n,Xnb)
xlabel("n -->")
ylabel("Xn -->")
title("Unit Step Function: discrete")

Xn1 = (n>0)
Xn2 = -(n<0)
Xnc = Xn1 + Xn2
subplot(3,2,5)
stem(n,Xnc)
xlabel("n -->")
ylabel("Xn -->")
title("Signum Function: discrete")

t = -2:0.05:2
Xna = (t==0)
subplot(3,2,2)
plot(t,Xna)
xlabel("t -->")
ylabel("Xt -->")
title("Unit Impulse Function: continuous")

Xnb = (t>=0)
subplot(3,2,4)
plot(t,Xnb)
xlabel("t -->")
ylabel("Xt -->")
title("Unit Step Function: continuous")

Xn1 = (t>0)
Xn2 = (t<0)
Xnc = Xn1 - Xn2
subplot(3,2,6)
plot(t,Xnc)
xlabel("t -->")
ylabel("Xt -->")
title("Signum Function: continuous")